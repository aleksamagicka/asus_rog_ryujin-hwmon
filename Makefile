.PHONY: all modules install modules_install clean

# external KDIR specification is supported
KDIR ?= /lib/modules/$(shell uname -r)/build

SOURCES := drivers/hwmon/asus_rog_ryujin.c

all: modules

install: modules_install

modules modules_install clean:
	make W=1 C=1 -C $(KDIR) M=$$PWD $@

checkpatch:
	$(KDIR)/scripts/checkpatch.pl --strict --no-tree $(SOURCES)

dev:
	make clean
	make
	sudo rmmod asus_rog_ryujin || true
	sudo insmod drivers/hwmon/asus_rog_ryujin.ko
