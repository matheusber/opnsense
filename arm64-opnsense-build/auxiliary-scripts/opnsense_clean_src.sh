#!/bin/sh

# Clean opnsense folders for a new build

for folder in core plugins ports src
do
 echo $folder
 rm -rf /usr/$folder
done

