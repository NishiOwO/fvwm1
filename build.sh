#!/bin/sh
count=`grep processor /proc/cpuinfo | wc -l | sed "s/ //g"`
if [ "$count" = "0" ]; then
        count=4
fi
which xmkmf || exit 1
xmkmf -a
make -j$count || exit 1
