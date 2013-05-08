TARBALL=cl-mongo.tar.gz

all: installed

downloaded: Makefile
	make clean
	mkdir -p asdf
	touch rospack_nosubdirs
	touch downloaded

unpacked: downloaded
	tar -xvzf $(TARBALL)
	touch unpacked

installed: unpacked
	ln -s ../cl-mongo/cl-mongo.asd asdf/cl-mongo.asd
	touch installed

clean:
	rm -rf cl-mongo asdf
	rm -f downloaded rospack_nosubdirs installed unpacked
