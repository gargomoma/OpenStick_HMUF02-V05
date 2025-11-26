#!/bin/sh

# Check if modem is connected
if mmcli -m 0 | grep -q 'connected'; then
    echo 1 > /sys/class/leds/green/brightness
    echo 0 > /sys/class/leds/red/brightness
else
    echo 0 > /sys/class/leds/green/brightness
    echo 1 > /sys/class/leds/red/brightness
fi

# Check if wlan0 is UP
if ip link show wlan0 | grep -q 'UP'; then
    echo 1 > /sys/class/leds/blue/brightness
else
    echo 0 > /sys/class/leds/blue/brightness
fi