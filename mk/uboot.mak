build-uboot:
	$(shell mkdir -p ${target_out_uboot})
	env LC_ALL=C make -C $(uboot_dir) \
		ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) \
		O=$(target_out_uboot) \
		stm32429-disco
