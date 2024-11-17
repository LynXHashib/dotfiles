#!/bin/bash
if bluetoothctl show | grep -q 'Powered: no'; then
    bluetoothctl power on
    bluetoothctl connect 'F4:B6:2D:10:D3:9F'
else
    bluetoothctl power off
fi
