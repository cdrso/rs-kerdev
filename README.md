# rs-kerdev

This repository provides a development environment tailored for Rust kernel hacking. It leverages Docker alongside QEMU and BusyBox to facilitate the process.

## Docker Setup

To utilize the Docker image, navigate to the `docker` directory within the repository. This directory contains scripts for both running and building the container.

## Compilation Process

First ensure the Rust toolchain is correctly configured, there is a bash script for this located at `/src/my_scripts/set-rs-toolchain.sh`.

Next, proceed to configure and compile both the kernel and BusyBox. It's crucial to disable the `CONFIG_TC` option and enable static linking by setting `CONFIG_STATIC=y` in the `/src/busybox/.config` file prior to running the `make` command.

## Generating Initramfs

Following successful compilation of BusyBox and the kernel, the next step involves generating the initramfs. This task can be accomplished using the script found at `/src/vm/set-initramfs.sh`.

## Kernel Testing with QEMU

Upon completion of the preceding steps, you're prepared to conduct kernel tests. Execute `/src/vm/run-vm.sh` to launch the virtual machine and begin your testing endeavors.





