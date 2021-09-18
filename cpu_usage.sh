#!/bin/sh

max_cpu=100

idle_cpu=$(top -b -n1 | grep ^%Cpu | awk '{print $8}' | cut -d '.' -f1)

result=$((max_cpu-idle_cpu))

printf "%d%%\n" $result
