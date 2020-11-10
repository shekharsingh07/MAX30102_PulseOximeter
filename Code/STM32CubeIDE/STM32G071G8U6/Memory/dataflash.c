/*
 * dataflash.c
 *
 *  Created on: Nov 8, 2020
 *      Author: Shekhar
 */
#include "dataflash.h"
#include "spi_driver.h"
#include "main.h"
char uart_buf[100];
int uart_buf_len;

uint8_t txDataflashInternalBuffer[MAXIMUM_TX_BYTES];

//Asserting RESET pin
void RESET_assert()
{
	HAL_GPIO_WritePin(RESET_PORT, RESET_PIN, GPIO_PIN_SET);
}

//Deasserting RESET pin
void RESET_deassert()
{
	HAL_GPIO_WritePin(RESET_PORT, RESET_PIN, GPIO_PIN_RESET);
}

//Asserting WPpin
void WP_assert()
{
	HAL_GPIO_WritePin(WP_PORT, WP_PIN, GPIO_PIN_RESET);
}

//Deasserting WPpin
void WP_deassert()
{
	HAL_GPIO_WritePin(WP_PORT, WP_PIN, GPIO_PIN_SET);
}

//Asserting CSpin
void CS_assert()
{
	HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_RESET);
}

//Deasserting CSpin
void CS_deassert()
{
	HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_SET);
}

//Asserting SCK pin
void SCK_assert()
{
	HAL_GPIO_WritePin(SCK_PORT, SCK_PIN, GPIO_PIN_SET);
}

//Deasserting SCK pin
void SCK_deassert()
{
	HAL_GPIO_WritePin(SCK_PORT, SCK_PIN, GPIO_PIN_RESET);
}

//SPI
void SPI_Delay(uint32_t delayTime)
{
    volatile uint32_t i = 0;
    for (i = 0; i < delayTime; ++i)
    {
        __asm("NOP"); /* delay */
    }
}

void SPI_ClockTick()
{
	SPI_Delay(DELAY);
	SCK_assert();
	SPI_Delay(DELAY);
	SCK_deassert();
}

void SPI_SendBit(uint8_t transmittedBit)
{
	// Guarantee clock is set to low
	SCK_deasserted();
	// Set MOSI based on transmittedBit
	if(transmittedBit)
		SCK_asserted();
	else
		SCK_deasserted();
	// Toggle clock
	SPI_ClockTick(DELAY);
}

void SPI_SendByte(uint8_t transmittedByte)
{
	int32_t i = 0;
	// Send byte
	for(i = 7; i >= 0; i--)
	{
		SPI_SendBit((transmittedByte >> i) & 1);
	}
}

uint8_t SPI_ReceiveByte()
{
	int32_t i = 0;
	uint8_t input = 0;

	// Receive byte
	for(i = 7; i >= 0; i--)
	{
		if(HAL_GPIO_ReadPin(MISO_PORT, MISO_PIN))
			input |= (1 << i);
		else
			input &= ~(1 << i);
		SPI_ClockTick(DELAY);
	}
	return input;
}

void SPI_Exchange(uint8_t *txBuffer,
				  uint32_t txNumBytes,
				  uint8_t *rxBuffer,
				  uint32_t rxNumBytes,
				  uint32_t dummyNumBytes)
{
	uint32_t i = 0;
	// Begin data exchange
	// Set clock to low
	HAL_GPIO_WritePin(SCK_PORT, SCK_PIN, GPIO_PIN_SET);
	// Select chip
	CS_deassert();

	// Send each byte
	for(i = 0; i < txNumBytes; i = i+1)
		SPI_SendByte(txBuffer[i]);
	// Receive each byte
	for(i = 0; i < dummyNumBytes; i = i+1)
		SPI_ReceiveByte();
	// Receive each byte
	for(i = 0; i < rxNumBytes; i = i+1)
		rxBuffer[i] = SPI_ReceiveByte();

	// End data exchange
	// Set clock to low
	SCK_deassert();
	// Deselect chip
	CS_deassert();
}


void load4BytesToTxBuffer(uint8_t *txBuffer, uint8_t opcode, uint32_t address)
{
	txBuffer[0] = opcode;
	txBuffer[1] = (uint8_t) (address >> 16);
	txBuffer[2] = (uint8_t) (address >> 8);
	txBuffer[3] = (uint8_t) address;
}


void dataflashArrayReadLowFreq(uint32_t address, uint8_t *rxBuffer, uint32_t rxNumBytes)
{
	load4BytesToTxBuffer(txDataflashInternalBuffer, CMD_DATAFLASH_ARRAY_READ_LF, address);
}

void dataflashMemoryProgramThruBuffer1WithErase(uint32_t address, uint8_t *txBuffer, uint32_t txNumBytes)
{
	load4BytesToTxBuffer(txDataflashInternalBuffer, CMD_DATAFLASH_MEM_PRGM_BUF1_W_ERASE, address);
	// Offset the data bytes by 4; opcode+address takes up the first 4 bytes of a transmission.
	uint32_t totalBytes = txNumBytes + 4;

	for(uint32_t j = 0; j < txNumBytes; j++)
	{
		txDataflashInternalBuffer[j+4] = txBuffer[j];
	}
	SPI_Exchange(txDataflashInternalBuffer, totalBytes, NULL, 0, 0);
}

void dataflashChipErase()
{
	txDataflashInternalBuffer[0] = CMD_DATAFLASH_CHIP_ERASE >> 24;
	txDataflashInternalBuffer[1] = (uint8_t) (CMD_DATAFLASH_CHIP_ERASE >> 16);
	txDataflashInternalBuffer[2] = (uint8_t) (CMD_DATAFLASH_CHIP_ERASE >> 8);
	txDataflashInternalBuffer[3] = (uint8_t) (CMD_DATAFLASH_CHIP_ERASE);
	SPI_Exchange(txDataflashInternalBuffer, 4, NULL, 0, 0);
//	uart_buf[100] = *txDataflashInternalBuffer;
//	UART_print();
//	uart_buf[100] = 4;
//	UART_print();
}


void fillArrayPattern(uint8_t * byteArray, uint32_t numBytes, int seedNumber)
{
	for(int i = 0; i < numBytes; i++)
	{
		byteArray[i] = (uint8_t)(seedNumber+i);
	}
}
