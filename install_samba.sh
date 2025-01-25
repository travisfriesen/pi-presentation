#!/usr/bin/env bash

adduser --system --no-create-home slides

echo "Enter a password for the share access account." && passwd slides
