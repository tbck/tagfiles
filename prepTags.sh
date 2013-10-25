#!/bin/sh

# Strips out lines starting with a pound symbol (shell comment)
# Also prints the package count.

filename=tagfile
suffix=.comments

total=0
for find in `find . -name $filename$suffix` ; do
    output=${find%.*}
    sed '/^#/d' $find > $output \
        && echo Uncommented $filename created: $output
    pkgs=$(grep ':ADD' $find | wc -l) 
    echo $pkgs Packages
    total=$(( $total + $pkgs ))
done
echo ------------------------
echo $total Total
