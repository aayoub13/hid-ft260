EXTRA_CFLAGS += -Wno-incompatible-pointer-types
KRELEASE ?= $(shell uname -r)
KBUILD ?= /lib/modules/$(KRELEASE)/build
obj-m += hid-ft260.o

all:
	$(MAKE) -C $(KBUILD) M=$(PWD) EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules

clean:
	$(MAKE) -C $(KBUILD) M=$(PWD) clean
