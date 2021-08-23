#!/usr/bin/env bash

batt=$(cat /sys/class/power_supply/BAT?/capacity)

x=($batt"%")

echo $x
