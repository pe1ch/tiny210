cmd_lib/errno.o := arm-linux-gcc -Wp,-MD,lib/.errno.o.d  -nostdinc -isystem /usr/local/arm/4.5.1/bin/../lib/gcc/arm-none-linux-gnueabi/4.5.1/include -Iinclude  -I/home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x20000000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -Wno-format-nonliteral -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork -mabi=aapcs-linux -mword-relocations -march=armv7-a -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(errno)"  -D"KBUILD_MODNAME=KBUILD_STR(errno)" -c -o lib/errno.o lib/errno.c

source_lib/errno.o := lib/errno.c

deps_lib/errno.o := \

lib/errno.o: $(deps_lib/errno.o)

$(deps_lib/errno.o):
