#!/bin/sh

mount -t proc none /proc
mount -t sysfs none /sys
mount -t debugfs none /sys/kernel/debug
 
echo -e "\nBoot took $(cut -d' ' -f1 /proc/uptime) seconds\n"

exec sh
