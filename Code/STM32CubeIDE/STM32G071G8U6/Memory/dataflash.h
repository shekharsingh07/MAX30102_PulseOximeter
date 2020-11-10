/*
 * dataflash.h
 *
 *  Created on: Nov 8, 2020
 *      Author: Shekhar
 */

#ifndef INC_DATAFLASH_H_
#define INC_DATAFLASH_H_
#include "main.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

extern uint8_t txDataflashInternalBuffer[MAXIMUM_TX_BYTES];
//SPI PORTS
#define MOSI_PORT	GPIOA
#define MISO_PORT	GPIOA
#define SCK_PORT	GPIOA

//SPI PINS
#define MOSI_PIN	GPIO_PIN_2
#define MISO_PIN	GPIO_PIN_6
#define SCK_PIN		GPIO_PIN_1

//Other PORTS
#define RESET_PORT	GPIOA
#define WP_PORT		GPIOA
#define CS_PORT		GPIOA
//Other PINS
#define RESET_PIN	GPIO_PIN_0
#define WP_PIN		GPIO_PIN_3
#define CS_PIN		GPIO_PIN_4

//Asserting RESET pin
void RESET_assert(void);

//Deasserting RESET pin
void RESET_deassert(void);

//Asserting WPpin
void WP_assert(void);

//Deasserting WPpin
void WP_deassert(void);

//Asserting CSpin
void CS_assert(void);

//Deasserting CSpin
void CS_deassert(void);

//Asserting SCK pin
void SCK_assert(void);

//Deasserting SCK pin
void SCK_deassert(void);

void load4BytesToTxBuffer(uint8_t *txBuffer, uint8_t opcode, uint32_t address);

void UART_print(void);

/*!
 * @brief OPCODE: 0x03 <br>
 * Reads rxNumBytes starting from location 'address' and stores the data in
 * the byte array rxBuffer. This command reads from a page in main memory at
 * a lower frequency than other commands as specified in the datasheet.
 *
 * @param address 3 byte address starting from which the data in memory will be read.
 * @param rxBuffer Pointer to the byte array in which the read data will be stored.
 * Must have at least rxNumBytes elements.
 * @param rxNumBytes Number of bytes to be read from the memory.
 * rxBuffer must have a minimum of this many elements.
 *
 * @retval void
 */
void dataflashArrayReadLowFreq(uint32_t address, uint8_t *rxBuffer, uint32_t rxNumBytes);

/*!
 * @brief OPCODE: 0x82 <br>
 * Programs main memory through buffer 1 starting at the address indicated by 'address'
 * with the built in erase feature.
 *
 * @param address The 3 bytes address indicating the first location to be written to.
 * Note page restrictions in manual.
 * @param txBuffer Pointer to the tx bytes that will be stored in buffer 2. Must
 * have a minimum of txNumBytes elements.
 * @param txNumBytes Number of bytes to be written to buffer 2. txBuffer
 * must have a minimum of this many elements.
 *
 * @retval void
 */
void dataflashMemoryProgramThruBuffer1WithErase(uint32_t address, uint8_t *txBuffer, uint32_t txNumBytes);

/*!
 * @brief OPCODE: 0xC794_809A <br>
 * Erases the entire chip by setting all bits.
 *
 * @retval void
 */
void dataflashChipErase();

/*!
 * @brief Helper function to display fill a byte array/buffer with a pattern based
 * on a seedNumber. The seed will be incremented by the index of the array.
 *
 * @param byteArray The byte array to be filled.
 * @param numBytes The number of bytes in the array to be filled.
 * @param seedNumber The byte stored at first index.
 *
 * @retval void
 */
void fillArrayPattern(uint8_t * byteArray, uint32_t numBytes, int seedNumber);

/*!
 * @brief Helper function to display fill a byte array/buffer with a constant number.
 *
 * @param byteArray The byte array to be filled.
 * @param numBytes The number of bytes in the array to be filled.
 * @param constantNum The value to be stored at each element of the array.
 *
 * @retval void
 */
void fillArrayConst(uint8_t * byteArray, uint32_t numBytes, int constantNum);

/**
 * @brief Helper function to compare 2 byte arrays and print an error message
 * if they do not match.
 *
 * @param arr1 The first of the 2 arrays to be compared.
 * @param arr2 The second array to be compared.
 * @param arrLength The length of both arrays.
 *
 * @retval bool Returns 1 if equivalent, 0 if non equivalent
 *
 * @warning The 2 arrays must both be a minimum of arrLength bytes.
 */
bool compareByteArrays(uint8_t *arr1, uint8_t *arr2, uint32_t arrLength);

#endif /* INC_DATAFLASH_H_ */
