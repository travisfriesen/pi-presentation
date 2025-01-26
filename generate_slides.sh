#!/usr/bin/env bash

sudo apt install python3 #just check that python is installed

make clean #clean old file

rm -rf slides && mkdir slides
cp -r images/* slides

python3 ./generate_slides.py

#run slides
make

DISPLAY=:0. chromium-browser slides.html --incognito --kiosk
