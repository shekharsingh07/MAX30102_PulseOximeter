/*
 * The Clear BSD License
 * Copyright (c) 2018 Adesto Technologies Corporation, Inc
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted (subject to the limitations in the disclaimer below) provided
 *  that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE GRANTED BY THIS LICENSE.
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*!
 * @ingroup SPI_LAYER
 */
/**
 * @file    spi_driver.c
 * @brief   Definitions of spi_driver functions.
 */
#include "spi_driver.h"
#include "dataflash.h"

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
	SCK_deassert();
	// Select chip
	CS_assert();

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
