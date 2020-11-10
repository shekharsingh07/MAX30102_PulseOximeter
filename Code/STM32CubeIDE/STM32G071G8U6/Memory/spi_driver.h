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
 * @file    spi_driver.h
 * @brief   Declarations of spi_driver functions.
 *
 * This is the Adesto SPI driver. It supports standard SPI, dual
 * SPI, and Quad SPI. Functionality is built in for a trigger GPIO
 * as well as a JEDEC reset.
 *
 * Initialization of the driver takes place with the
 * SPI_ConfigureSingleSPIIOs() function which should be called after
 * the pins have been set as GPIOs but before adesto layer commands
 * are run.
 */
#ifndef SPI_DRIVER_H_
#define SPI_DRIVER_H_

#include "dataflash.h"
#include "main.h"

//PORTS
#define SPI_CSB_PORT	CS_PORT

#define SPI_SCK_PORT	SCK_PORT

#define SPI_MOSI_PORT	MOSI_PORT

#define SPI_MISO_PORT	MISO_PORT

#define SPI_WPB_PORT	WP_PORT

#define SPI_HOLDB_PORT	RESET_PORT

//PINS
#define SPI_CSB_PIN		CS_PIN

#define SPI_SCK_PIN		SCK_PIN

#define SPI_MOSI_PIN	MOSI_PIN

#define SPI_MISO_PIN	MISO_PIN

#define SPI_WPB_PIN		WP_PIN

#define SPI_HOLDB_PIN	RESET_PIN

#define DELAY 500

#define SPI 0
#define QPI 1

/*!
 * @brief Clears a given pin on a port to LOW.
 *
 * @param port The port number.
 * @param pin The pin number.
 *
 * @retval void
 */
void SPI_PinClear(uint32_t port, uint32_t pin);

/*!
 * @brief Sets a given pin on a port to HIGH.
 *
 * @param port The port number.
 * @param pin The pin number.
 *
 * @retval void
 */
void SPI_PinSet(uint32_t port, uint32_t pin);

/*!
 * @brief Reads the voltage on a given pin.
 *
 * @param port The port number.
 * @param pin The pin number.
 *
 * @retval 32-bit word, 0 = LOW, 1 = HIGH.
 */
uint32_t SPI_PinRead(uint32_t port, uint32_t pin);

/*!
 * @brief Sends and receives bytes based on the function parameters.
 * MISO and MOSI fill their standard SPI roles.
 *
 * @param *txBuffer A pointer to the tx byte array to be transmitted.
 * Should have tx_bytes elements.
 * @param txNumBytes The number of bytes to be transmitted.
 * @param *rxBuffer A pointer to the rx byte array where received data will be stored.
 * Should have rx_bytes elements.
 * @param rxNumBytes The number of bytes to be received.
 * @param dummyNumBytes The number of dummy bytes to be sent.
 *
 * @retval void
 */
void SPI_Exchange(uint8_t *txBuffer,
				  uint32_t txNumBytes,
				  uint8_t *rxBuffer,
				  uint32_t rxNumBytes,
				  uint32_t dummyNumBytes);


/*!
 * @brief Receives a byte along MISO and returns the value received.
 *
 * @retval uint8_t The byte received in Little Endian format.
 */
uint8_t SPI_ReceiveByte();

/*!
 * @brief Receives a byte along both MOSI and MISO and returns the value received.
 *
 * @retval uint8_t The byte received in Little Endian format.
 */
uint8_t SPI_DualReceiveByte();

/*!
 * @brief Sends a byte along MOSI.
 *
 * @param transmittedByte Byte to be sent.
 * @retval void
 */
void SPI_SendByte(uint8_t transmittedByte);

/*!
 * @brief Sends a byte along both MOSI and MISO.
 *
 * @param transmittedByte Byte to be sent.
 * @retval void
 */

void SPI_ClockTick();

/*!
 * @brief Sends a single bit along MOSI while toggling the clock.
 *
 * @param transmittedBit Bit to be sent, either 1 or 0.
 * @retval void
 */
void SPI_SendBit(uint8_t transmittedBit);

/*!
 * @brief Performs a delayTime number of NOPs
 *
 * @param delayTime The number of NOPs to be run.
 * @retval void
 */
void SPI_Delay(uint32_t delayTime);

/*!
 * @brief Configure the IOs for SPI bit banging usage. 4 pins are
 * needed: CSb, SCK, MOSI, MISO.
 *
 * @retval void
 *
 * @warning Moneta and Dataflash shields differ. Moneta uses PTD4 for CSb,
 * while Dataflash uses PTC2-8.
 * @warning Only call this function once at the beginning of the program to
 * configure the IOs. Calling this function a second time will cause CSb to
 * go low temporarily if it was high. Use SPI_ReturnToSingleSPIIOs() if a return
 * to single SPI is required mid program.
 */

#endif /* SPI_DRIVER_H_ */
