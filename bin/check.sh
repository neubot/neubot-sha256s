#!/bin/sh

if [ "$1" != "" ]; then
    dir=$1
    cd $dir || exit $?
    wget `awk '{print "http://releases.neubot.org/_packages/" $2 }' SHA256` &&
    sha256sum -c SHA256
fi
