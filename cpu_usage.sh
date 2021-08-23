#!/usr/bin/env bash

idle_cpu=$(top -b -n1 | grep ^%Cpu | awk '{print $8}' | cut -d '.' -f1)

max_cpu=100

echo $(($max_cpu-$idle_cpu))%
