cmd_u-boot.lds := arm-linux-gcc -E -Wp,-MD,./.u-boot.lds.d -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x20000000  -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -mword-relocations  -march=armv7-a   -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -pipe -Iinclude  -I/home/peich/share/source/smart210-SDK/u-boot-2014.04/arch/arm/include  -nostdinc -isystem /usr/local/arm/4.5.1/bin/../lib/gcc/arm-none-linux-gnueabi/4.5.1/include -include /home/peich/share/source/smart210-SDK/u-boot-2014.04/include/u-boot/u-boot.lds.h -DCPUDIR=arch/arm/cpu/armv7  -ansi -D__ASSEMBLY__ -x assembler-with-cpp -P -o u-boot.lds /home/peich/share/source/smart210-SDK/u-boot-2014.04/arch/arm/cpu/u-boot.lds

source_u-boot.lds := /home/peich/share/source/smart210-SDK/u-boot-2014.04/arch/arm/cpu/u-boot.lds

deps_u-boot.lds := \
  /home/peich/share/source/smart210-SDK/u-boot-2014.04/include/u-boot/u-boot.lds.h \

u-boot.lds: $(deps_u-boot.lds)

$(deps_u-boot.lds):
