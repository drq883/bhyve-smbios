# bhyve-smbios

This repo contains a patch file and utilities to patch bhyve to allow
specification of a smbios config file that contains smbios configuration for
types 0, 1, 2, 3, or 11.

The Makefile has 5 targets:

- patch   - patch and build bhyve (vmrun.sh is also patched)
- revert  - revert patched source to original
- create  - create a bhyve.patch-TEST file from current changes
- build   - rebuild bhyve from current sources
- install - install bhyve from current sources

# to patch and install
- make patch
- make install

# To create a new patch file after more modifications

- cd /root/bhyve-patch
- ./create-bhyve-patch
- mv bhyve.patch-TEST bhyve.patch

# smbios.conf
This is a sample smbios.conf file

# To user the smbios.conf file
Specify the config file to bhyve using the -B <file> option.

# Notes:
This has been tested on the following FreeBSD versions:

  12.1-RELEASE
  13-0.RELEASE
  13-STABLE
  14-CURRENT

master is currently the patches for 14-CURRENT. See the other branches for
other patches:

  12.0-RELEASE
  13-STABLE
  13.0-RELEASE

