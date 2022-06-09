typedef unsigned int (*copy_sd_mmc_to_mem) (unsigned int  channel, unsigned int  start_block, unsigned char block_size, unsigned int  *trg, unsigned int  init);


void copy_code_to_dram(void)
{
	unsigned long ch;
    unsigned long dest=0x34800000;
    unsigned int sec_no = 49;
    unsigned int ret;
	unsigned int i;
	unsigned long uImage_sec_no = 1000;
	unsigned long uImage_dest = 0x30008000;

	ch = *(volatile unsigned int *)(0xD0037488);

	// ???????
	copy_sd_mmc_to_mem copy_bl2 = (copy_sd_mmc_to_mem) (*(unsigned int *) (0xD0037F98));
	
	// ???0
	if (ch == 0xEB000000)
	{
		// 0:channel 0
		// 49:?,????¦Ë??????49,1 sector = 512 bytes
		ret = copy_bl2(0, sec_no,   128,(unsigned int *)(dest), 0);
        ret = copy_bl2(0, sec_no+128, 128,(unsigned int *)(dest+0x10000), 0);
        ret = copy_bl2(0, sec_no+256, 128,(unsigned int *)(dest+0x20000), 0);

		for (i = 0; i < 5*1024; i++)
		{
			/* kernel */
			//copy_bl2(0, uImage_sec_no + i * 2, 2, (unsigned int *)(uImage_dest + (i*1024)), 0);
		}
	}
}
