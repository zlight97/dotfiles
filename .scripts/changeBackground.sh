#!/bin/bash

pkill blurme
sleep 1
if [ $# -eq 0 ]
then
    pic=$(tail -n1 ~/.fehbg | cut -d "'" -f2)
else
    pic=$*
fi
    wal -i $pic
    feh --bg-scale $pic
    exec $HOME/.scripts/blurme.sh&