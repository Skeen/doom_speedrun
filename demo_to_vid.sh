#!/bin/bash

# Record a set of screenshots
prboom-plus -iwad ~/Downloads/Doom1.WAD -complevel 3 -skill 4 -timedemo output/1606001736/demo.lmp -avidemo png

# Rename all *.tga to *.png
for f in *.tga; do
    mv -- "$f" "${f%.tga}.png"
done

# Convert PNGs to video
ffmpeg -framerate 35 -pattern_type glob -i '*.png' -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4

# Clean up
rm *.png
rm *.txt
