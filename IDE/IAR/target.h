/* target.h
 *
 * User configurable build-time options for bootloader and application offsets
 *
 * target.h is automatically generated using the template in target.h.in by running
 * "make config".
 *
 * Copyright (C) 2021 wolfSSL Inc.
 *
 * This file is part of wolfBoot.
 *
 * wolfBoot is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * wolfBoot is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1335, USA
 */

#ifndef H_TARGETS_TARGET_
#define H_TARGETS_TARGET_

#define WOLFBOOT_SECTOR_SIZE 0x20000
#define WOLFBOOT_PARTITION_BOOT_ADDRESS 0x20000
#define WOLFBOOT_PARTITION_SIZE 0x60000

#define WOLFBOOT_PARTITION_UPDATE_ADDRESS 0x700000 //смещение для новой прошивки

#define WOLFBOOT_PARTITION_SWAP_ADDRESS 0x6E0000 //смещение для сектора теневого копироваия

#define WOLFBOOT_KEY_STORE_SECTOR 0x08010000                                                                              //сектор для хранения ключа
#define WOLFBOOT_KEY_STORE_BLOCK 0xFF                                                                                     //размера блока данных под ключ
#define WOLFBOOT_KEY_STORE_SECTOR_SIZE 0xFFFF                                                                             //размер сектора для хранения ключа
#define WOLFBOOT_KEY_STORE_OFFSET (WOLFBOOT_KEY_STORE_SECTOR + WOLFBOOT_KEY_STORE_SECTOR_SIZE - WOLFBOOT_KEY_STORE_BLOCK) //смещение для хранения ключа

#define PART_UPDATE_EXT
#define PART_SWAP_EXT

//#define NO_VTOR

//#define DISABLE_BACKUP

#define DEBUG
#define EXT_ENCRYPTED
#define ENCRYPT_WITH_AES256
#define WOLFSSL_AES_COUNTER

/* Load address in RAM for staged OS (update_ram only) */
#define WOLFBOOT_DTS_BOOT_ADDRESS
#define WOLFBOOT_DTS_UPDATE_ADDRESS
#define WOLFBOOT_LOAD_ADDRESS
#define WOLFBOOT_LOAD_DTS_ADDRESS
#define WOLFBOOT_FIXED_PARTITIONS

#define EXT_FLASH
#define SPI_FLASH

#endif /* !H_TARGETS_TARGET_ */
