#!/bin/bash

cd /src/linux
usr/gen_initramfs.sh -o /src/vm/initramfs.img /src/busybox/_install /src/vm/cpio_list

