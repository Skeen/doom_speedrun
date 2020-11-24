#!/bin/bash

while true; do
    NOW=$(date +%s)
    mkdir -p output/${NOW}/

    prboom-plus -iwad ~/Downloads/Doom1.WAD -complevel 3 -skill 4 -warp "1 1" -levelstat -record demo.lmp;
    cp levelstat.txt last_complete
    mv demo.lmp output/${NOW}/
    mv levelstat.txt output/${NOW}/
done
