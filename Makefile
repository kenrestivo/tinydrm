KDIR ?= /lib/modules/`uname -r`/build


default:
	$(MAKE) -C $(KDIR) M=$$PWD CFLAGS_MODULE=-I$$PWD/include

#install:
#	$(MAKE) -C $(KDIR) M=$$PWD modules_install

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
