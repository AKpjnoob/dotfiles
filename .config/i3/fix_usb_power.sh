#!/bin/bash
# This forces every USB device (including your Logitech receiver) to stay 'on'
for i in /sys/bus/usb/devices/*/power/control; do
    echo on | sudo tee "$i" > /dev/null
done
