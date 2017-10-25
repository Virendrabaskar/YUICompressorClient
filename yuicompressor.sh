#!/bin/bash

FILENAME=$1

count=0

cat $FILENAME | while read LINE

do
    cat $LINE

done | exec java -jar yuicompressor-2.4.8.jar ${@:2}
