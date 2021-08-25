#!/bin/sh

# Screenshot with Imagemagick
# Make the %H %M %s the name of the picture

time=$(date +"%R:%S")

name=$time.png

import ~/Pictures/$name

