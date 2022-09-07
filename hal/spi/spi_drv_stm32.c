/* spi_drv_stm32.c
 *
 * Driver for the SPI back-end of the SPI_FLASH module.
 *
 * Example implementation for stm32F4, using SPI1.
 *
 * Pinout: see spi_drv_stm32.h
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
#include <stdint.h>
#include "spi_drv.h"
#include "spi_drv_stm32.h"

void RAMFUNCTION spi_cs_off(int pin)
{
    SPI_PIO_CS_BSRR |= (1 << pin);
    while(!(SPI_PIO_CS_ODR & (1 << pin)))
        ;
}

void RAMFUNCTION spi_cs_on(int pin)
{
    SPI_PIO_CS_BSRR |= (1 << (pin + 16));
    while(SPI_PIO_CS_ODR & (1 << pin))
        ;
}


    /**SPI1 GPIO Configuration
    PB7     ------> SPI1_WP
    PB6     ------> SPI1_CS
    PB8     ------> SPI1_HOLD
    */

static void spi_flash_pin_setup(void)
{
    uint32_t reg;
    RCC_GPIO_CLOCK_ER |= SPI_PIO_CS_CEN;
    reg = SPI_PIO_CS_MODE & ~ (0x03 << (SPI_CS_FLASH * 2));
    SPI_PIO_CS_MODE = reg | (1 << (SPI_CS_FLASH * 2));
    reg = SPI_PIO_CS_PUPD & ~(0x03 <<  (SPI_CS_FLASH * 2));
    SPI_PIO_CS_PUPD = reg | (0x01 << (SPI_CS_FLASH * 2));
    reg = SPI_PIO_CS_OSPD & ~(0x03 << (SPI_CS_FLASH * 2));
    SPI_PIO_CS_OSPD |= (0x03 << (SPI_CS_FLASH * 2));
    
    //RCC_GPIO_CLOCK_ER |= SPI_PIO_CS_CEN;
    reg = SPI_PIO_CS_MODE & ~ (0x03 << (SPI_WP_FLASH * 2));
    SPI_PIO_CS_MODE = reg | (1 << (SPI_WP_FLASH * 2));
    reg = SPI_PIO_CS_PUPD & ~(0x03 <<  (SPI_WP_FLASH * 2));
    SPI_PIO_CS_PUPD = reg | (0x01 << (SPI_WP_FLASH * 2));
    reg = SPI_PIO_CS_OSPD & ~(0x03 << (SPI_WP_FLASH * 2));
    SPI_PIO_CS_OSPD |= (0x03 << (SPI_WP_FLASH * 2));
    
    reg = SPI_PIO_CS_MODE & ~ (0x03 << (SPI_HOLD_FLASH * 2));
    SPI_PIO_CS_MODE = reg | (1 << (SPI_HOLD_FLASH * 2));
    reg = SPI_PIO_CS_PUPD & ~(0x03 <<  (SPI_HOLD_FLASH * 2));
    SPI_PIO_CS_PUPD = reg | (0x01 << (SPI_HOLD_FLASH * 2));
    reg = SPI_PIO_CS_OSPD & ~(0x03 << (SPI_HOLD_FLASH * 2));
    SPI_PIO_CS_OSPD |= (0x03 << (SPI_HOLD_FLASH * 2));
    
    
    
    
    spi_cs_off(SPI_CS_FLASH);
    spi_cs_off(SPI_WP_FLASH);
    spi_cs_off(SPI_HOLD_FLASH);
}

static void spi_tpm2_pin_setup(void)
{
#ifdef WOLFBOOT_TPM
    uint32_t reg;
    RCC_GPIO_CLOCK_ER |= SPI_PIO_CS_CEN;
    reg = SPI_PIO_CS_MODE & ~ (0x03 << (SPI_CS_TPM * 2));
    SPI_PIO_CS_MODE = reg | (1 << (SPI_CS_TPM * 2));
    reg = SPI_PIO_CS_PUPD & ~(0x03 <<  (SPI_CS_TPM * 2));
    SPI_PIO_CS_PUPD = reg | (0x01 << (SPI_CS_TPM * 2));
    reg = SPI_PIO_CS_OSPD & ~(0x03 << (SPI_CS_TPM * 2));
    SPI_PIO_CS_OSPD |= (0x03 << (SPI_CS_TPM * 2));
    spi_cs_off(SPI_CS_TPM);
#endif
}

    /**SPI1 GPIO Configuration
    PA5     ------> SPI1_SCK
    PB4     ------> SPI1_MISO
    PB5     ------> SPI1_MOSI
    */
static void spi1_pins_setup(void)
{
    uint32_t reg;
    RCC_GPIO_CLOCK_ER |= SPI_PIO_CEN; //enable clock gpiob
    RCC_GPIO_CLOCK_ER |= CEN_GPIOA; //enable clock gpioa
    /* Set mode = AF */
    reg = SPI_PIO_MODE_CLK & ~ (0x03 << (SPI1_CLOCK_PIN * 2)); //5*2=10
    SPI_PIO_MODE_CLK = reg | (2 << (SPI1_CLOCK_PIN * 2));
    reg = SPI_PIO_MODE & ~ (0x03 << (SPI1_MOSI_PIN * 2));
    SPI_PIO_MODE = reg | (2 << (SPI1_MOSI_PIN * 2));
    reg = SPI_PIO_MODE & ~ (0x03 << (SPI1_MISO_PIN * 2));
    SPI_PIO_MODE = reg | (2 << (SPI1_MISO_PIN * 2));

    /* Alternate function: use low pins (5,6,7) */
    reg = SPI_PIO_AFL_CLK & ~(0xf << ((SPI1_CLOCK_PIN) * 4)); //0x05 == SPI1 Alternate Function mapping
    SPI_PIO_AFL_CLK = reg | (SPI1_PIN_AF << ((SPI1_CLOCK_PIN) * 4)); //GPIO alternate function low register (GPIOx_AFRL) (x = A..I/J/K)
    reg = SPI_PIO_AFL & ~(0xf << ((SPI1_MOSI_PIN) * 4));
    SPI_PIO_AFL = reg | (SPI1_PIN_AF << ((SPI1_MOSI_PIN) * 4));
    reg = SPI_PIO_AFL & ~(0xf << ((SPI1_MISO_PIN) * 4));
    SPI_PIO_AFL = reg | (SPI1_PIN_AF << ((SPI1_MISO_PIN) * 4));
    
    
        //GPIO port output speed register (GPIOx_OSPEEDR)
    reg = SPI_PIO_OSPD_CLK & ~(0x03 << ((SPI1_CLOCK_PIN) * 2)); //11: Very high speed
    SPI_PIO_OSPD_CLK = reg | (0x03 << ((SPI1_CLOCK_PIN) * 2)); //GPIO alternate function low register (GPIOx_AFRL) (x = A..I/J/K)
    

#ifdef PLATFORM_stm32l0
    reg = SPI_PIO_PUPD & ~(0x03 <<  (SPI1_CLOCK_PIN * 2));
    SPI_PIO_PUPD = reg | (0x02 << (SPI1_CLOCK_PIN * 2));
    reg = SPI_PIO_PUPD & ~(0x03 <<  (SPI1_MOSI_PIN * 2));
    SPI_PIO_PUPD = reg | (0x02 << (SPI1_MOSI_PIN * 2));
    reg = SPI_PIO_PUPD & ~(0x03 <<  (SPI1_MISO_PIN * 2));
    SPI_PIO_PUPD = reg | (0x02 << (SPI1_MISO_PIN * 2));

    reg = SPI_PIO_OSPD & ~(0x03 << (SPI1_CLOCK_PIN * 2));
    SPI_PIO_OSPD |= (0x03 << (SPI1_CLOCK_PIN * 2));
    reg = SPI_PIO_OSPD & ~(0x03 << (SPI1_MOSI_PIN * 2));
    SPI_PIO_OSPD |= (0x03 << (SPI1_MOSI_PIN * 2));
    reg = SPI_PIO_OSPD & ~(0x03 << (SPI1_MISO_PIN * 2));
    SPI_PIO_OSPD |= (0x03 << (SPI1_MISO_PIN * 2));
#endif
}

static void spi_pins_release(void)
{
    uint32_t reg;
    /* Set mode = 0 */
    SPI_PIO_MODE_CLK &= ~ (0x03 << (SPI1_CLOCK_PIN * 2));
    SPI_PIO_MODE &= ~ (0x03 << (SPI1_MOSI_PIN * 2));
    SPI_PIO_MODE &= ~ (0x03 << (SPI1_MISO_PIN * 2));

    /* Alternate function clear */
    SPI_PIO_AFL &= ~(0xf << ((SPI1_CLOCK_PIN) * 4));
    SPI_PIO_AFL &= ~(0xf << ((SPI1_MOSI_PIN) * 4));
    SPI_PIO_AFL &= ~(0xf << ((SPI1_MISO_PIN) * 4));

    /* Floating */
    SPI_PIO_PUPD_CLK &= ~ (0x03 << (SPI1_CLOCK_PIN * 2));
    SPI_PIO_PUPD &= ~ (0x03 << (SPI1_MOSI_PIN * 2));
    SPI_PIO_PUPD &= ~ (0x03 << (SPI1_MISO_PIN * 2));

    /* Release CS */
    SPI_PIO_CS_MODE &= ~ (0x03 << (SPI_CS_FLASH * 2));
    SPI_PIO_CS_PUPD &= ~ (0x03 <<  (SPI_CS_FLASH * 2));

}

static void spi1_reset(void)
{
    APB2_CLOCK_RST |= SPI1_APB2_CLOCK_ER_VAL;
    APB2_CLOCK_RST &= ~SPI1_APB2_CLOCK_ER_VAL;
}

uint8_t RAMFUNCTION spi_read(void)
{
    volatile uint32_t reg;
    //reg=(uint8_t)SPI1_DR;
    reg++;
    do {

        reg = SPI1_SR;

    } while(!(reg & SPI_SR_RX_NOTEMPTY));

        
    return (uint8_t)SPI1_DR;
}

     void RAMFUNCTION spi_write(const char byte)
{
    int i;
    volatile uint32_t reg;
    do {
        reg = SPI1_SR;
    } while ((reg & SPI_SR_TX_EMPTY) == 0);
    SPI1_DR = byte;
    do {
        reg = SPI1_SR;
    } while ((reg & SPI_SR_TX_EMPTY) == 0);
}


void spi_init(int polarity, int phase)
{
    static int initialized = 0;
    if (!initialized) {
        initialized++;
        spi1_pins_setup(); //mosi miso cs setup
        spi_flash_pin_setup(); //cs wp hold pins setup
        spi_tpm2_pin_setup();
        APB2_CLOCK_ER |= SPI1_APB2_CLOCK_ER_VAL; //SPI1EN: SPI1 clock enable
        spi1_reset();
#ifdef PLATFORM_stm32l0
        SPI1_CR1 = SPI_CR1_MASTER | (polarity << 1) | (phase << 0);
#else
        SPI1_CR1 = SPI_CR1_MASTER | (1<<9) | (1<<8) | (6 << 3) | (polarity << 1) | (phase << 0); //(5==64div)(4==32div)
#endif
        SPI1_CR2 |= SPI_CR2_SSOE;
        SPI1_CR1 |= SPI_CR1_SPI_EN;
    }
}

void RAMFUNCTION spi_release(void)
{
    spi1_reset();
	SPI1_CR2 &= ~SPI_CR2_SSOE;
	SPI1_CR1 = 0;
    spi_pins_release();
}
