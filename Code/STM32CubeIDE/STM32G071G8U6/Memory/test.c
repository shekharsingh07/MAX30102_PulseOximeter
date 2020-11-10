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
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*!
 * @ingroup TEST_LAYER MAIN
 */
/**
 * @file    test.c
 * @brief   Test layer definitions exist here.
 */

#include "test.h"

uint32_t defaultTest(){return dataflashTest();};

uint32_t dataflashTest()
{
   	// Instantiate the arrays needed for testing purposes.
	// dataWrite is used when sending data that will be flashed to the device.
	uint8_t dataWrite[MAXIMUM_BUFFER_SIZE] = {0};
	// dataRead is used as a buffer for received data. Read data will be stored here.
	uint8_t dataRead[MAXIMUM_BUFFER_SIZE] = {0};
	// dataTest is used as a buffer for comparisons. dataRead will be
	// loaded with data and compared against this buffer for equality.
	uint8_t dataTest[MAXIMUM_BUFFER_SIZE] = {0};
	// Count the number of errors, this is output at the end of the testbench.
	uint32_t errorCount = 0;

	// Store the manufacturing ID for later comparison
	uint8_t MID[5] = {0x1F, 0x25, 0x00, 0x01, 0x00};


	// Load up dataWrite with a pattern that will be used for testing.
	fillArrayPattern(dataWrite, 100, 0x00);


	/********************************************************************
	 *		    		1. TEST						*
	 ********************************************************************/

	//write to main memory and read function
	//uart print = success

	// Test buffer 1:
	// Part B: Test that data can be written to main memory.
	// Data will be programmed to the device through the buffer, and then read back with different
	// read commands. Each read command will be tested, and success/failure messages output to the
	// console.
	dataflashBuffer1ToMainMemoryWithErase(0);
	dataflashWaitOnReady();
	dataflashArrayReadLowFreq(0, dataRead, 100);
	if(!compareByteArrays(dataRead, dataWrite, 100))
	{
		printf("Main memory through Buffer 1 r/w failure.\n");
		errorCount++;
	}
	else
	{
		printf("Main memory through Buffer 1 r/w success.\n");
	}


	// Test complete. Print messages and exit.
	printf("\n\n#############################################\n\n");
	printf("Testing complete.\n");
	printf("Total errors detected: %d\n", errorCount);
	printf("Terminating testbench.\n");
	printf("\n#############################################\n\n");

	return errorCount;
}

