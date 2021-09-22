#!/usr/bin/env bash

mogrify -resize 360 \
  -path ./assets/images/resized/ \
  ./assets/images/resized/*.jpg

