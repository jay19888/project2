#!/bin/bash +x
cd /home/ubuntu/build

total=`ls | wc -l`
# lets say we want to keep recent 10 builds
toDelete=$(( total - 10 ))

if (( $toDelete > 0 ))
then
	ls -r | head - $toDelete | xargs rm -rf
fi
