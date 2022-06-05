cmd_spl/arch/arm/cpu/armv7/s5pc1xx/reset.o := arm-linux-gcc -Wp,-MD,spl/arch/arm/cpu/armv7/s5pc1xx/.reset.o.d  -nostdinc -isystem /usr/local/arm/4.5.1/bin/../lib/gcc/arm-none-linux-gnueabi/4.5.1/include -Iinclude  -I/home/peich/share/source/smart210-SDK/u-boot-2014.04/arch/arm/include -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x20000000 -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -g     -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -march=armv7-a   -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -pipe     -c -o spl/arch/arm/cpu/armv7/s5pc1xx/reset.o arch/arm/cpu/armv7/s5pc1xx/reset.S

source_spl/arch/arm/cpu/armv7/s5pc1xx/reset.o := arch/arm/cpu/armv7/s5pc1xx/reset.S

deps_spl/arch/arm/cpu/armv7/s5pc1xx/reset.o := \
  /home/peich/share/source/smart210-SDK/u-boot-2014.04/arch/arm/include/asm/arch/cpu.h \
  include/linux/linkage.h \
  /home/peich/share/source/smart210-SDK/u-boot-2014.04/arch/arm/include/asm/linkage.h \

spl/arch/arm/cpu/armv7/s5pc1xx/reset.o: $(deps_spl/arch/arm/cpu/armv7/s5pc1xx/reset.o)

$(deps_spl/arch/arm/cpu/armv7/s5pc1xx/reset.o):
