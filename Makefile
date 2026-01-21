# Default target
all: build

build:
	cd package && dpkg-buildpackage -us -uc
	genisoimage -o xrdp-hyperv-enhanced.iso -J -R -V "XRDP-HYPERV-ENHANCED" xrdp-hyperv-enhanced_0.1.0_all.deb

clean:
	rm -f xrdp-hyperv-enhanced*
	cd package && debian/rules clean
