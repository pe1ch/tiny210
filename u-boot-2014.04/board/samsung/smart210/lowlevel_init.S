/*
 * Copyright (C) 2009 Samsung Electronics
 * Kyungmin Park <kyungmin.park@samsung.com>
 * Minkyu Kang <mk7.kang@samsung.com>
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <config.h>
#include <version.h>
#include <asm/arch/cpu.h>
#include <asm/arch/power.h>

/*
 * Register usages:
 *
 * r5 has zero always
 */

	.globl lowlevel_init
lowlevel_init:
	mov	r9, lr

#ifdef CONFIG_SPL_BUILD

        bl clock_init                   /* clock init */
        bl ddr_init                     /* DDR init */

        /* add by Flinn, for uart */
        ldr r0, =0xE0200000     /* GPA0_CON */
        ldr     r1, =0x22222222
        str     r1, [r0]


	ldr r0, =0xE2900000
	ldr r1, =0x3
	str r1, [r0]				@ULCON0=3

	ldr r1, =0x305
	str r1, [r0, #0x4]			@UCON0=0x305

	ldr r1, =1
	str r1, [r0, #0x8]			@UFCON0=1

	ldr r1, =0
	str r1, [r0, #0xc]			@UMCON0=0

	ldr r1, =34
	str r1, [r0, #0x28]			@UBRDIV0=34

	ldr r1, =0xDFDD
	str r1, [r0, #0x2c]			@UDIVSLOT0=13'1

	ldr r0, =0xE2900020

	ldr r1, =0xa
	str r1, [r0]				@UTH0='\r'

	ldr r1, =0xd
	str r1, [r0]				@UTH0='\n'

	ldr r1, =0x53
	str r1, [r0]				@UTH0='S'

	ldr r1, =0x50
	str r1, [r0]				@UTH0='P'

        ldr r1, =0x4c
	str r1, [r0]				@UTH0='L'

	ldr r1, =0x5f
	str r1, [r0]				@UTH0='-'

	ldr r1, =0x55
	str r1, [r0]				@UTH0='U'

	ldr r1, =0x61
	str r1, [r0]				@UTH0='a'

	ldr r1, =0x72
	str r1, [r0]				@UTH0='r'

	ldr r1, =0x74
	str r1, [r0]				@UTH0='t'

	ldr r1, =0x5f
	str r1, [r0]				@UTH0='-'

	ldr r1, =0x4f
	str r1, [r0]				@UTH0='O'

	ldr r1, =0x6b
	str r1, [r0]				@UTH0='k'

	ldr r1, =0xa
	str r1, [r0]				@UTH0='\r'

	ldr r1, =0xd
	str r1, [r0]				@UTH0='\n'

#endif
        mov     pc, r9                /* return */
