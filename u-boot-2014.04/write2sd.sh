#!/bin/bash
sudo dd iflag=sync oflag=sync if=spl/smart210-spl.bin of=/dev/sdb seek=1
sudo dd iflag=sync oflag=sync if=u-boot.bin of=/dev/sdb seek=32
sync
echo "done."
