#!/bin/bash 

qemu-system-x86_64 \
    -kernel /src/linux/arch/x86/boot/bzImage \
    -initrd /src/vm/initramfs.img \
    -append "console=ttyS0 root=/dev/ram init=/init" \
    -enable-kvm \
    -nographic

