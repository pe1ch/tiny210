cmd_spl/board/samsung/smart210/lowlevel_init.o := arm-linux-gcc -Wp,-MD,spl/board/samsung/smart210/.lowlevel_init.o.d  -nostdinc -isystem /usr/local/arm/4.5.1/bin/../lib/gcc/arm-none-linux-gnueabi/4.5.1/include -Iinclude  -I/home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=0x20000000 -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -g     -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -march=armv7-a   -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -pipe     -c -o spl/board/samsung/smart210/lowlevel_init.o board/samsung/smart210/lowlevel_init.S

source_spl/board/samsung/smart210/lowlevel_init.o := board/samsung/smart210/lowlevel_init.S

deps_spl/board/samsung/smart210/lowlevel_init.o := \
    $(wildcard include/config/spl/build.h) \
  include/config.h \
    $(wildcard include/config/sys/arch.h) \
    $(wildcard include/config/sys/cpu.h) \
    $(wildcard include/config/sys/board.h) \
    $(wildcard include/config/sys/vendor.h) \
    $(wildcard include/config/sys/soc.h) \
    $(wildcard include/config/boarddir.h) \
  include/config_cmd_defaults.h \
    $(wildcard include/config/cmd/defaults/h/.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmd/crc32.h) \
    $(wildcard include/config/cmd/exportenv.h) \
    $(wildcard include/config/cmd/go.h) \
    $(wildcard include/config/cmd/importenv.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
    $(wildcard include/config/partitions.h) \
  include/configs/smart210.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/samsung.h) \
    $(wildcard include/config/s5p.h) \
    $(wildcard include/config/s5pc100.h) \
    $(wildcard include/config/smart210.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/arch/cpu/init.h) \
    $(wildcard include/config/display/cpuinfo.h) \
    $(wildcard include/config/display/boardinfo.h) \
    $(wildcard include/config/sys/clk/freq.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/setup/memory/tags.h) \
    $(wildcard include/config/cmdline/tag.h) \
    $(wildcard include/config/initrd/tag.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/serial0.h) \
    $(wildcard include/config/pwm.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/cmd/flash.h) \
    $(wildcard include/config/cmd/imls.h) \
    $(wildcard include/config/cmd/nand.h) \
    $(wildcard include/config/cmd/cache.h) \
    $(wildcard include/config/cmd/reginfo.h) \
    $(wildcard include/config/cmd/onenand.h) \
    $(wildcard include/config/cmd/elf.h) \
    $(wildcard include/config/cmd/fat.h) \
    $(wildcard include/config/cmd/mtdparts.h) \
    $(wildcard include/config/bootdelay.h) \
    $(wildcard include/config/zero/bootdelay/check.h) \
    $(wildcard include/config/mtd/device.h) \
    $(wildcard include/config/mtd/partitions.h) \
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/ramdisk/boot.h) \
    $(wildcard include/config/common/boot.h) \
    $(wildcard include/config/bootargs.h) \
    $(wildcard include/config/updateb.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/sys/hush/parser.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/sys/memtest/start.h) \
    $(wildcard include/config/sys/memtest/end.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/sys/monitor/base.h) \
    $(wildcard include/config/sys/no/flash.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/ident/string.h) \
    $(wildcard include/config/nand/spl.h) \
    $(wildcard include/config/enable/mmu.h) \
    $(wildcard include/config/sys/mapped/ram/base.h) \
    $(wildcard include/config/env/is/in/onenand.h) \
    $(wildcard include/config/env/is/in/nand.h) \
    $(wildcard include/config/env/addr.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/use/onenand/board/init.h) \
    $(wildcard include/config/samsung/onenand.h) \
    $(wildcard include/config/sys/onenand/base.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/smc911x.h) \
    $(wildcard include/config/smc911x/16/bit.h) \
    $(wildcard include/config/smc911x/base.h) \
    $(wildcard include/config/env/srom/bank.h) \
    $(wildcard include/config/driver/dm9000.h) \
    $(wildcard include/config/dm9000/no/srom.h) \
    $(wildcard include/config/dm9000/base.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/ipaddr.h) \
    $(wildcard include/config/serverip.h) \
    $(wildcard include/config/ethaddr.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/sys/nand/base.h) \
    $(wildcard include/config/nand/s5pv210.h) \
    $(wildcard include/config/s5pv210/nand/hwecc.h) \
    $(wildcard include/config/sys/nand/eccsize.h) \
    $(wildcard include/config/sys/nand/eccbytes.h) \
    $(wildcard include/config/cmd/nand/yaffs.h) \
  /home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include/asm/arch/cpu.h \
  include/config_cmd_default.h \
    $(wildcard include/config/cmd/default/h.h) \
    $(wildcard include/config/cmd/bdi.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/console.h) \
    $(wildcard include/config/cmd/echo.h) \
    $(wildcard include/config/cmd/editenv.h) \
    $(wildcard include/config/cmd/fpga.h) \
    $(wildcard include/config/cmd/imi.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/loadb.h) \
    $(wildcard include/config/cmd/loads.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/misc.h) \
    $(wildcard include/config/cmd/nfs.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/cmd/setgetdcr.h) \
    $(wildcard include/config/cmd/source.h) \
    $(wildcard include/config/cmd/ximg.h) \
  /home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/static/rela.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/cmd/ide.h) \
    $(wildcard include/config/cmd/sata.h) \
    $(wildcard include/config/cmd/scsi.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/sys/hz.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/link/local.h) \
    $(wildcard include/config/cmd/rarp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/cmd/tftpput.h) \
    $(wildcard include/config/cmd/tftpsrv.h) \
  include/version.h \
  include/timestamp.h \
  include/generated/timestamp_autogenerated.h \
  include/generated/version_autogenerated.h \
  /home/peich/share/source/tiny210v2-sdk/u-boot-2014.04/arch/arm/include/asm/arch/power.h \

spl/board/samsung/smart210/lowlevel_init.o: $(deps_spl/board/samsung/smart210/lowlevel_init.o)

$(deps_spl/board/samsung/smart210/lowlevel_init.o):
