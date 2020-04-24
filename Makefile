# for patching, creating patch set, revert patch

top:
	@echo The following targets are supported
	@echo
	@echo "patch   - patch and build bhyve"
	@echo "revert  - revert patched source to original"
	@echo "create  - create a bhyve.patch-TEST file from"
	@echo "          current changes"
	@echo "build   - rebuild bhyve from current sources"
	@echo "install - install bhyve from current sources"

build:
	cd /usr/src/usr.sbin/bhyve && make

install:
	cd /usr/src/usr.sbin/bhyve && make && make install
	install -v -d -m 0755 -o root -g wheel /usr/share/examples/bhyve
	install -v -o root -g wheel -m 444 /usr/src/share/examples/bhyve/vmrun.sh /usr/share/examples/bhyve/vmrun.sh

patch:
	./patch-bhyve

revert:
	./revert-patches

create:
	./create-bhyve-patch
