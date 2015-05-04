#!/bin/bash
result=$(/bin/cat /sys/devices/platform/sunxi-i2c.0/i2c-0/0-0034/temp1_input | /usr/bin/awk '{print "{ \"cpu_temp\": " $1/ 1000 "}," }')

echo  ${result%?} 
