/*
 * Memory Setup stuff - taken from blob memsetup.S
 *
 * Copyright (C) 2009 Samsung Electronics
 * Kyungmin Park <kyungmin.park@samsung.com>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

#include <config.h>
#include <version.h>
#include <asm/arch/cpu.h>
#include <asm/arch/clock.h>
#include <asm/arch/power.h>

/*
 * Register usages:
 *
 * r5 has zero always
 * r7 has S5PC100 GPIO base, 0xE0300000
 * r8 has real GPIO base, 0xE0300000, 0xE0200000 at S5PC100, S5PC110 repectively
 * r9 has Mobile DDR size, 1 means 1GiB, 2 means 2GiB and so on
 */

_TEXT_BASE:
	.word	CONFIG_SYS_TEXT_BASE

	.globl lowlevel_init
lowlevel_init:
	mov	r11, lr

	/* set srom_bw */
	ldr r0, =0xE8000000
	ldr r1, =0x30
	str r1,[r0]

	/* r5 has always zero */
	mov	r5, #0

	ldr	r7, =S5PC100_GPIO_BASE
	ldr	r8, =S5PC100_GPIO_BASE
	/* Read CPU ID */
	ldr	r2, =S5PC110_PRO_ID
	ldr	r0, [r2]
	mov	r1, #0x00010000
	and	r0, r0, r1
	cmp	r0, r5
	beq	100f
	ldr	r8, =S5PC110_GPIO_BASE
100:
	/* Turn on KEY_LED_ON [GPJ4(1)] XMSMWEN */
	cmp	r7, r8
	beq	skip_check_didle			@ Support C110 only

	ldr	r0, =S5PC110_RST_STAT
	ldr	r1, [r0]
	and	r1, r1, #0x000D0000
	cmp	r1, #(0x1 << 19)			@ DEEPIDLE_WAKEUP
	beq	didle_wakeup
	cmp	r7, r8

skip_check_didle:
	addeq	r0, r8, #0x280				@ S5PC100_GPIO_J4
	addne	r0, r8, #0x2C0				@ S5PC110_GPIO_J4
	ldr	r1, [r0, #0x0]				@ GPIO_CON_OFFSET
	bic	r1, r1, #(0xf << 4)			@ 1 * 4-bit
	orr	r1, r1, #(0x1 << 4)
	str	r1, [r0, #0x0]				@ GPIO_CON_OFFSET

	ldr	r1, [r0, #0x4]				@ GPIO_DAT_OFFSET
	bic	r1, r1, #(1 << 1)
	str	r1, [r0, #0x4]				@ GPIO_DAT_OFFSET

	/* Don't setup at s5pc100 */
	beq	100f

	/*
	 * Initialize Async Register Setting for EVT1
	 * Because we are setting EVT1 as the default value of EVT0,
	 * setting EVT0 as well does not make things worse.
	 * Thus, for the simplicity, we set for EVT0, too
	 *
	 * The "Async Registers" are:
	 *	0xE0F0_0000
	 *	0xE1F0_0000
	 *	0xF180_0000
	 *	0xF190_0000
	 *	0xF1A0_0000
	 *	0xF1B0_0000
	 *	0xF1C0_0000
	 *	0xF1D0_0000
	 *	0xF1E0_0000
	 *	0xF1F0_0000
	 *	0xFAF0_0000
	 */
	ldr     r0, =0xe0f00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xe1f00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1800000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1900000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1a00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1b00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1c00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1d00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1e00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xf1f00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	ldr     r0, =0xfaf00000
	ldr     r1, [r0]
	bic     r1, r1, #0x1
	str     r1, [r0]

	/*
	 * Diable ABB block to reduce sleep current at low temperature
	 * Note that it's hidden register setup don't modify it
	 */
	ldr	r0, =0xE010C300
	ldr	r1, =0x00800000
	str	r1, [r0]

100:
	/* IO retension release */
	ldreq	r0, =S5PC100_OTHERS			@ 0xE0108200
	ldrne	r0, =S5PC110_OTHERS			@ 0xE010E000
	ldr	r1, [r0]
	ldreq	r2, =(1 << 31)				@ IO_RET_REL
	ldrne	r2, =((1 << 31) | (1 << 30) | (1 << 29) | (1 << 28))
	orr	r1, r1, r2
	/* Do not release retention here for S5PC110 */
	streq	r1, [r0]

	/* Disable Watchdog */
	ldreq	r0, =S5PC100_WATCHDOG_BASE		@ 0xEA200000
	ldrne	r0, =S5PC110_WATCHDOG_BASE		@ 0xE2700000
	str	r5, [r0]

	/* setting SRAM */
	ldreq	r0, =S5PC100_SROMC_BASE
	ldrne	r0, =S5PC110_SROMC_BASE
	ldr	r1, =0x9
	str	r1, [r0]

	/* S5PC100 has 3 groups of interrupt sources */
	ldreq	r0, =S5PC100_VIC0_BASE			@ 0xE4000000
	ldrne	r0, =S5PC110_VIC0_BASE			@ 0xF2000000
	add	r1, r0, #0x00100000
	add	r2, r0, #0x00200000

	/* Disable all interrupts (VIC0, VIC1 and VIC2) */
	mvn	r3, #0x0
	str	r3, [r0, #0x14]				@ INTENCLEAR
	str	r3, [r1, #0x14]				@ INTENCLEAR
	str	r3, [r2, #0x14]				@ INTENCLEAR

	/* Set all interrupts as IRQ */
	str	r5, [r0, #0xc]				@ INTSELECT
	str	r5, [r1, #0xc]				@ INTSELECT
	str	r5, [r2, #0xc]				@ INTSELECT

	/* Pending Interrupt Clear */
	str	r5, [r0, #0xf00]			@ INTADDRESS
	str	r5, [r1, #0xf00]			@ INTADDRESS
	str	r5, [r2, #0xf00]			@ INTADDRESS
	
	bl  system_clock_init 
	
	/* for UART */
	bl	uart_asm_init

	/* display the value of 0xE00000000 */
	ldr r0, =0xE0000000
	bl display_addr_dat

	/* for DDR */
	bl ddrmem_init

	ldr r0, =0x30000000
	ldr r1, =0x12345678
	str r1, [r0]
	bl display_addr_dat

	bl	internal_ram_init

	/* for copy_code_to_ddr */
	bl copy_code_to_dram
	ldr r0, =0x34800000
	bl display_addr_dat

	cmp	r7, r8
	/* Clear wakeup status register */
	ldreq	r0, =S5PC100_WAKEUP_STAT
	ldrne	r0, =S5PC110_WAKEUP_STAT
	ldr	r1, [r0]
	str	r1, [r0]

	/* IO retension release */
	ldreq	r0, =S5PC100_OTHERS			@ 0xE0108200
	ldrne	r0, =S5PC110_OTHERS			@ 0xE010E000
	ldr	r1, [r0]
	ldreq	r2, =(1 << 31)				@ IO_RET_REL
	ldrne	r2, =((1 << 31) | (1 << 30) | (1 << 29) | (1 << 28))
	orr	r1, r1, r2
	str	r1, [r0]

	b	1f

didle_wakeup:
	/* Wait when APLL is locked */
	ldr	r0, =0xE0100100			@ S5PC110_APLL_CON
lockloop:
	ldr	r1, [r0]
	and	r1, r1, #(1 << 29)
	cmp	r1, #(1 << 29)
	bne	lockloop

	ldr	r0, =S5PC110_INFORM0
	ldr	r1, [r0]
	mov	pc, r1
	nop
	nop
	nop
	nop
	nop

1:
	mov	lr, r11
	mov	pc, lr

/*
 * system_clock_init: Initialize core clock and bus clock.
 * void system_clock_init(void)
 */
 system_clock_init:
        ldr     r0, =S5PC110_CLOCK_BASE         @ 0xE0100000
 
        /* Set Clock divider */
        ldr     r1, =0x14131440                 @
        str     r1, [r0, #0x300]
 
        /* Set Lock Time */
        ldr     r1, =0x2D0                      @ Locktime : 30us
        str     r1, [r0, #0x000]                @ S5PC110_APLL_LOCK
        ldr     r1, =0xBB0                      @ Locktime : 0xBB8 = 3000
        str     r1, [r0, #0x008]                @ S5PC110_MPLL_LOCK
        str     r1, [r0, #0x010]                @ S5PC110_EPLL_LOCK
        str     r1, [r0, #0x020]                @ S5PC110_VPLL_LOCK
 
        /* S5PC110_APLL_CON */
        ldr     r1, =0x807D0301                 @ 800MHz
        str     r1, [r0, #0x100]
        /* S5PC110_MPLL_CON */
        ldr     r1, =0x829B0C01                 @ 667MHz
        str     r1, [r0, #0x108]
        /* S5PC110_EPLL_CON */
        ldr     r1, =0x80600602                 @  96MHz VSEL 0 P 6 M 96 S 2
        str     r1, [r0, #0x110]
        /* S5PC110_VPLL_CON */
        ldr     r1, =0x806C0603                 @  54MHz
        str     r1, [r0, #0x120]
 
        /* Set Source Clock */
        ldr     r1, =0x10001111                 @ A, M, E, VPLL Muxing
        str     r1, [r0, #0x200]                @ S5PC1XX_CLK_SRC0
 
        /* wait at least 200us to stablize all clock */
        mov     r2, #0x10000
1:      subs    r2, r2, #1
        bne     1b
 
        mov     pc, lr

internal_ram_init:
	ldreq	r0, =0xE3800000
	ldrne	r0, =0xF1500000
	ldr	r1, =0x0
	str	r1, [r0]

	mov	pc, lr

/*
 * uart_asm_init: Initialize UART's pins
 */
uart_asm_init:
	/* set GPIO to enable UART0-UART4 */
	mov	r0, r8
	ldr	r1, =0x22222222
	str	r1, [r0, #0x0]			@ S5PC100_GPIO_A0_OFFSET
	ldr	r1, =0x00002222
	str	r1, [r0, #0x20]			@ S5PC100_GPIO_A1_OFFSET

	/* Check S5PC100 */
	cmp	r7, r8
	bne	110f

	/* UART_SEL GPK0[5] at S5PC100 */
	add	r0, r8, #0x2A0			@ S5PC100_GPIO_K0_OFFSET
	ldr	r1, [r0, #0x0]			@ S5PC1XX_GPIO_CON_OFFSET
	bic	r1, r1, #(0xf << 20)		@ 20 = 5 * 4-bit
	orr	r1, r1, #(0x1 << 20)		@ Output
	str	r1, [r0, #0x0]			@ S5PC1XX_GPIO_CON_OFFSET

	ldr	r1, [r0, #0x8]			@ S5PC1XX_GPIO_PULL_OFFSET
	bic	r1, r1, #(0x3 << 10)		@ 10 = 5 * 2-bit
	orr	r1, r1, #(0x2 << 10)		@ Pull-up enabled
	str	r1, [r0, #0x8]			@ S5PC1XX_GPIO_PULL_OFFSET

	ldr	r1, [r0, #0x4]			@ S5PC1XX_GPIO_DAT_OFFSET
	orr	r1, r1, #(1 << 5)		@ 5 = 5 * 1-bit
	str	r1, [r0, #0x4]			@ S5PC1XX_GPIO_DAT_OFFSET

	b	200f
110:
	/*
	 * Note that the following address
	 * 0xE020'0360 is reserved address at S5PC100
	 */
	/* UART_SEL MP0_5[7] at S5PC110 */
	add	r0, r8, #0x360			@ S5PC110_GPIO_MP0_5_OFFSET
	ldr	r1, [r0, #0x0]			@ S5PC1XX_GPIO_CON_OFFSET
	bic	r1, r1, #(0xf << 28)		@ 28 = 7 * 4-bit
	orr	r1, r1, #(0x1 << 28)		@ Output
	str	r1, [r0, #0x0]			@ S5PC1XX_GPIO_CON_OFFSET

	ldr	r1, [r0, #0x8]			@ S5PC1XX_GPIO_PULL_OFFSET
	bic	r1, r1, #(0x3 << 14)		@ 14 = 7 * 2-bit
	orr	r1, r1, #(0x2 << 14)		@ Pull-up enabled
	str	r1, [r0, #0x8]			@ S5PC1XX_GPIO_PULL_OFFSET

	ldr	r1, [r0, #0x4]			@ S5PC1XX_GPIO_DAT_OFFSET
	orr	r1, r1, #(1 << 7)		@ 7 = 7 * 1-bit
	str	r1, [r0, #0x4]			@ S5PC1XX_GPIO_DAT_OFFSET

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
200:
	mov	pc, lr



display_addr_dat:
	ldr r0, [r0]

	ldr r1, =0xE2900020

	ldr r2, =0x30
	str r2, [r1]				@UTH0='0'

	ldr r2, =0x78
	str r2, [r1]				@UTH0='x'

	ldr r3, =28

disphex_loop_cnt:
	lsr r2, r0, r3
	and r2, r2, #0xf
	cmp r2, #10
	addmi r2, r2, #0x30
	addpl r2, r2, #0x37
	str r2, [r1]

	sub r3, r3, #4
	cmp r3, #0
	bpl disphex_loop_cnt

	ldr r2, =0xA
	str r2, [r1]				@UTH0='\r'

	ldr r2, =0xD
	str r2, [r1]				@UTH0='\n'

	mov pc, lr


.global ddrmem_init
ddrmem_init:
	//2.����PhyControl0.ctrl_start_pointandPhyControl0.ctrl_inc
	ldr r0, =0xF0000000
	ldr r1, =0x00101002
	str r1,[r0,#0x18]
	
	//3.����PhyControl1.ctrl_shiftcandPhyControl1.ctrl_offsetc
	ldr r1, =0x2046
	str r1,[r0,#0x1C]
	
	//4.����PhyControl0.ctrl_startΪ1
	ldr r1, =0x00101003
	str r1,[r0,#0x18]
	
	//5.����ConControl�ر��Զ�ˢ��
	ldr r1, =0x0FFF13A8
	str r1,[r0,#0x0]
	
	//6.����MemControl�ر����еĵ���ģʽ
	ldr r1, =0x00212400
	str r1,[r0,#0x4]
	
	//7.����MemConfig0
	ldr r1, =0x20E00323
	str r1,[r0,#0x8]
	
	//8.����PrechConfigandPwrdnConfig
	ldr r1, =0xFF000000
	ldr r1,[r0,#0x14]
	
	ldr r1, =0xFFFF00FF
	str r1,[r0,#0x28]
	
	//9.����TimingAref,TimingRow,TimingDataandTimingPower
	ldr r1, =0x618
	str r1,[r0,#0x30]
	
	ldr r1, =0x1C24434A
	str r1,[r0,#0x34]
	
	ldr r1, =0x24240000
	str r1,[r0,#0x38]
	
	ldr r1, =0x08C90343
	str r1,[r0,#0x3C]
	
	
	//10.QoSû�õ�����һ������
	
	//11.ͨ����PhyStatus0.ctrl_locked �Ƿ�Ϊ1���PHY DLL�Ƿ�����
1:
	ldr r1,[r0,#0x40]
	and r2,r1,#0x2
	cmp r2,#0
	beq 1b
	
	//12.ǿ����ʱ
	and r1,r1,#0x3fc0
	mov r2,r1,LSL #18
	orr r2,r2,#0x100000
	orr r2,r2,#0x1000
	orr r2,r2,#0x3
	str r2,[r0,#0x18]
	
	//13.�����ȴ�200us��ʱ��ƽ�ȣ���һ�����ÿ������ڴ��ʼ���϶�ʱ��ƽ����
	//14.ʹ��DirectCmd����NOP���ȷ��CKE����Ϊ�ߵ�ƽ
	ldr r1, =0x07000000
	str r1,[r0,#0x10]
	
	//15.�ȴ�����400ns
	//16.ʹ��DirectCmd����PALL����
	ldr r1, =0x01000000
	str r1,[r0,#0x10]
	
	//17.ʹ��DirectCmd����EMRS2����ȥд�����в���
	ldr r1, =0x00020000
	str r1,[r0,#0x10]
	
	//18.ʹ��DirectCmd����EMRS3����ȥд�����в���
	ldr r1, =0x00030000
	str r1,[r0,#0x10]
	
	//19. ʹ��DirectCmd����EMRS���ʹ���ڴ�DLLs
	ldr r1, =0x00010000
	str r1,[r0,#0x10]
	
	//20.ʹ��DirectCmd����MRS�����λ�ڴ�DLLs
	ldr r1, =0x542
	str r1,[r0,#0x10]
	
	//21.ʹ��DirectCmd����PALL����
	ldr r1, =0x01000000
	str r1,[r0,#0x10]
	
	//22.ʹ��DirectCmd��������auto refresh����
	ldr r1, =0x05000000
	str r1,[r0,#0x10]
	str r1,[r0,#0x10]
	
	//23.ʹ��DirectCmd����MRS��������޸�λ���ڴ�DLL
	ldr r1, =0x442
	str r1,[r0,#0x10]
	
	//24.���ٵ�200��ʱ������
	//25.ʹ��DirectCmd����EMRS�������OCDУ��
	ldr r1, =0x00010780
	str r1,[r0,#0x10]
	
	//26.��������
	//27.����ConControl�����Զ�ˢ�¼�����
	ldr r1, =0x0FFF13B8
	str r1,[r0,#0x0]
	
	//28����б�Ҫ�Ļ�����MemControl��������ģʽ

	ldr r0, =0xE2900020
	ldr r1, =0x44
	str r1, [r0]				@UTH0='D'

	ldr r1, =0x44
	str r1, [r0]				@UTH0='D'

	ldr r1, =0x52
	str r1, [r0]				@UTH0='R'

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

	mov	pc, lr
