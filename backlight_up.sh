#!/bin/sh
P="/sys/class/backlight/acpi_video0"
ACT=`more $P/actual_brightness`
ACT=$((ACT+1))
echo $ACT >$P/brightness
# For Lenovo T495 until I will find a better method
# dont' forget it works with kernel parameter backlight=acpi
