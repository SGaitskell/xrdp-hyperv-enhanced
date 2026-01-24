# Default target
all: build

build:
	cd package && dpkg-buildpackage -us -uc
	genisoimage -o xrdp-hyperv-enhanced.iso -J -R -V "XRDP-HYPERV-ENHANCED" xrdp-hyperv-enhanced_*_all.deb

clean:
	rm -f xrdp-hyperv-enhanced*
	cd package && debian/rules clean
