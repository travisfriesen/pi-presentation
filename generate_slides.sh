#!/usr/bin/env bash

sudo apt install python3 #just check that python is installed

rm -rf slides && mkdir slides
cp -r images/* slides

python3 ./generate_slides.py

#run slides
