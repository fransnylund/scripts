#!/bin/sh

disk=$(df -h | grep /$ | awk '{print $5}')

echo "$disk"
