OPENWRT_ROOTFS = http://downloads.openwrt.org/snapshots/trunk/x86/64/openwrt-x86-64-rootfs.tar.gz
OUTPUT_ACI = openwrt.aci

all:
	mkdir -p build/rootfs
	wget -O rootfs.tar.gz $(OPENWRT_ROOTFS)
	tar xf rootfs.tar.gz -C build/rootfs

enter:
	sudo systemd-nspawn -D build/rootfs

aci:
	actool build build/ $(OUTPUT_ACI)

clean:
	rm -rf build/rootfs/ rootfs.tar.gz $(OUTPUT_ACI)

.PHONY: all enter aci
