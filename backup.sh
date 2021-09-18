#!/bin/sh

# Simple backup script

[ ! -e "$1" ] && echo "Error. "\"$1"\" does not exist." && exit 1

dir="$1-backup"
meta="Backup created: $(date +%d-%m-%Y)"

[ -d "$dir" ] || mkdir "$dir"

file="$dir/$1-$(date +"%T")"
cp "$1" "$file"

# Add the current time to the top of the file
[ -s "$file" ] && sed -i "1i $meta" "$file" || echo "$meta" >> "$file" 

echo "Created a backup of $1 in $dir"

  
