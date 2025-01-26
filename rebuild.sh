#!/usr/bin/env bash
while true; do
  find /images/ -type f | entr -d ./yourscript.sh
done
