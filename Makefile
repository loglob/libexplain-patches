.PHONY: patch download

patch: libexplain-1.4 patches
	cd $<; patch -p1 < ../patches

download: libexplain-1.4

libexplain-1.4:
	if [ ! -d $@ ]; then \
	wget https://downloads.sourceforge.net/project/libexplain/1.4/libexplain-1.4.tar.gz; \
	tar -xzf libexplain-1.4.tar.gz; \
	rm libexplain-1.4.tar.gz; \
	fi
