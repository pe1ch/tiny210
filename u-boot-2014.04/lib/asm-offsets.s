	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.file	"asm-offsets.c"
@ GNU C (ctng-1.8.1-FA) version 4.5.1 (arm-none-linux-gnueabi)
@	compiled by GNU C version 4.3.0 20080428 (Red Hat 4.3.0-8), GMP version 4.3.2, MPFR version 2.4.2-p2, MPC version 0.8.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -Iinclude
@ -I/home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include
@ -iprefix
@ /usr/local/arm/4.5.1/bin/../lib/gcc/arm-none-linux-gnueabi/4.5.1/
@ -isysroot /usr/local/arm/4.5.1/bin/../arm-none-linux-gnueabi/sys-root
@ -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x20000000 -DCONFIG_ARM -D__ARM__
@ -DDO_DEPS_ONLY -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(asm_offsets)
@ -DKBUILD_MODNAME=KBUILD_STR(asm_offsets) -isystem
@ /usr/local/arm/4.5.1/bin/../lib/gcc/arm-none-linux-gnueabi/4.5.1/include
@ -MD lib/.asm-offsets.s.d lib/asm-offsets.c -marm -mno-thumb-interwork
@ -mabi=aapcs-linux -mword-relocations -march=armv7-a -msoft-float
@ -mtune=arm1176jzf-s -mfpu=vfp -auxbase-strip lib/asm-offsets.s -g -Os
@ -Wall -Wstrict-prototypes -Wno-format-security -Wno-format-nonliteral
@ -fno-builtin -ffreestanding -fno-stack-protector -ffunction-sections
@ -fdata-sections -fno-common -ffixed-r9 -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdata-sections -fdefer-pop
@ -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -ffunction-sections -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions
@ -finline-functions-called-once -finline-small-functions -fipa-cp
@ -fipa-pure-const -fipa-reference -fipa-sra -fira-share-save-slots
@ -fira-share-spill-slots -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
@ -foptimize-sibling-calls -fpeephole -fpeephole2 -freg-struct-return
@ -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
@ -fsched-stalled-insns-dep -fschedule-insns2 -fsection-anchors
@ -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstrict-aliasing -fstrict-overflow -fthread-jumps -ftoplevel-reorder
@ -ftrapping-math -ftree-builtin-call-dce -ftree-ccp -ftree-ch
@ -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
@ -ftree-sra -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version
@ -ftree-vrp -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
@ -fverbose-asm -fzero-initialized-in-bss -mglibc -mlittle-endian
@ -msched-prolog -mword-relocations

	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
@ Compiler executable checksum: f08cf2d1fe4502725cdc4be8171a4771

	.cfi_sections	.debug_frame
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB169:
	.file 1 "lib/asm-offsets.c"
	.loc 1 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 22 0
#APP
@ 22 "lib/asm-offsets.c" 1
	
->GENERATED_GBL_DATA_SIZE #160 (sizeof(struct global_data) + 15) & ~15	@
@ 0 "" 2
	.loc 1 25 0
@ 25 "lib/asm-offsets.c" 1
	
->GENERATED_BD_INFO_SIZE #32 (sizeof(struct bd_info) + 15) & ~15	@
@ 0 "" 2
	.loc 1 28 0
@ 28 "lib/asm-offsets.c" 1
	
->GD_SIZE #160 sizeof(struct global_data)	@
@ 0 "" 2
	.loc 1 30 0
@ 30 "lib/asm-offsets.c" 1
	
->GD_BD #0 offsetof(struct global_data, bd)	@
@ 0 "" 2
	.loc 1 34 0
@ 34 "lib/asm-offsets.c" 1
	
->GD_RELOCADDR #44 offsetof(struct global_data, relocaddr)	@
@ 0 "" 2
	.loc 1 36 0
@ 36 "lib/asm-offsets.c" 1
	
->GD_RELOC_OFF #64 offsetof(struct global_data, reloc_off)	@
@ 0 "" 2
	.loc 1 38 0
@ 38 "lib/asm-offsets.c" 1
	
->GD_START_ADDR_SP #60 offsetof(struct global_data, start_addr_sp)	@
@ 0 "" 2
	.loc 1 43 0
	mov	r0, #0	@,
	bx	lr	@
	.cfi_endproc
.LFE169:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include/asm/u-boot.h"
	.file 3 "include/linux/types.h"
	.file 4 "include/net.h"
	.file 5 "/home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include/asm/arch/cpu.h"
	.section	.debug_info
	.4byte	0x31b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x59
	.4byte	0x30
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0x24
	.4byte	0xa8
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x26
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x27
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x20
	.byte	0x2
	.byte	0x1d
	.4byte	0x117
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1e
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x1f
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x20
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0x21
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x2
	.byte	0x22
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0x23
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x2
	.byte	0x28
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x9
	.4byte	0x83
	.4byte	0x127
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x29
	.4byte	0xa8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x148
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x5
	.byte	0x0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x40
	.byte	0x4
	.byte	0x51
	.4byte	0x1fd
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x52
	.4byte	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x53
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x54
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x55
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x57
	.4byte	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x58
	.4byte	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x59
	.4byte	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x5a
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x5e
	.4byte	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x5f
	.4byte	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x60
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x61
	.4byte	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x20d
	.uleb128 0xa
	.4byte	0x3e
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x45
	.4byte	0x222
	.uleb128 0xd
	.4byte	0x222
	.uleb128 0xd
	.4byte	0x132
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x148
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20d
	.uleb128 0xc
	.byte	0x1
	.4byte	0x45
	.4byte	0x248
	.uleb128 0xd
	.4byte	0x222
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0xd
	.4byte	0x45
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x22e
	.uleb128 0xc
	.byte	0x1
	.4byte	0x45
	.4byte	0x25e
	.uleb128 0xd
	.4byte	0x222
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x24e
	.uleb128 0xe
	.byte	0x1
	.4byte	0x270
	.uleb128 0xd
	.4byte	0x222
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x264
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x4
	.byte	0x4
	.2byte	0x203
	.4byte	0x29c
	.uleb128 0x10
	.4byte	.LASF35
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF36
	.sleb128 1
	.uleb128 0x10
	.4byte	.LASF37
	.sleb128 2
	.uleb128 0x10
	.4byte	.LASF38
	.sleb128 3
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x45
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x5
	.byte	0x46
	.4byte	0x3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x5
	.byte	0x47
	.4byte	0x3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x4
	.byte	0x6b
	.4byte	0x222
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x209
	.4byte	0x276
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x5
	.byte	0x46
	.4byte	0x3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x5
	.byte	0x47
	.4byte	0x3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x4
	.byte	0x6b
	.4byte	0x222
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x209
	.4byte	0x276
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x31f
	.4byte	0x29c
	.ascii	"main\000"
	.4byte	0x0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x4f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x31f
	.4byte	0x76
	.ascii	"ulong\000"
	.4byte	0xa8
	.ascii	"bd_info\000"
	.4byte	0x127
	.ascii	"bd_t\000"
	.4byte	0x148
	.ascii	"eth_device\000"
	.4byte	0x276
	.ascii	"net_loop_state\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"eth_current\000"
.LASF15:
	.ascii	"bi_arm_freq\000"
.LASF32:
	.ascii	"next\000"
.LASF30:
	.ascii	"halt\000"
.LASF43:
	.ascii	"GNU C 4.5.1\000"
.LASF26:
	.ascii	"state\000"
.LASF34:
	.ascii	"priv\000"
.LASF13:
	.ascii	"bi_arch_number\000"
.LASF10:
	.ascii	"start\000"
.LASF27:
	.ascii	"init\000"
.LASF31:
	.ascii	"write_hwaddr\000"
.LASF42:
	.ascii	"net_state\000"
.LASF37:
	.ascii	"NETLOOP_SUCCESS\000"
.LASF24:
	.ascii	"enetaddr\000"
.LASF25:
	.ascii	"iobase\000"
.LASF38:
	.ascii	"NETLOOP_FAIL\000"
.LASF1:
	.ascii	"long unsigned int\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"bi_dsp_freq\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"s5p_cpu_rev\000"
.LASF47:
	.ascii	"main\000"
.LASF12:
	.ascii	"bi_baudrate\000"
.LASF18:
	.ascii	"bi_dram\000"
.LASF19:
	.ascii	"ulong\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF28:
	.ascii	"send\000"
.LASF21:
	.ascii	"bd_info\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF45:
	.ascii	"/home/peich/share/source/tiny210v2-sdk/u-boot-2014."
	.ascii	"04\000"
.LASF29:
	.ascii	"recv\000"
.LASF6:
	.ascii	"long long int\000"
.LASF36:
	.ascii	"NETLOOP_RESTART\000"
.LASF33:
	.ascii	"index\000"
.LASF46:
	.ascii	"net_loop_state\000"
.LASF8:
	.ascii	"short int\000"
.LASF17:
	.ascii	"bi_ddr_freq\000"
.LASF22:
	.ascii	"eth_device\000"
.LASF35:
	.ascii	"NETLOOP_CONTINUE\000"
.LASF39:
	.ascii	"s5p_cpu_id\000"
.LASF4:
	.ascii	"long int\000"
.LASF5:
	.ascii	"char\000"
.LASF14:
	.ascii	"bi_boot_params\000"
.LASF7:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"size\000"
.LASF20:
	.ascii	"bd_t\000"
.LASF23:
	.ascii	"name\000"
.LASF44:
	.ascii	"lib/asm-offsets.c\000"
	.ident	"GCC: (ctng-1.8.1-FA) 4.5.1"
	.section	.note.GNU-stack,"",%progbits
