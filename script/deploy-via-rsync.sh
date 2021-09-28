#!/usr/bin/env bash

# rsync -av --delete --rsh=ssh ./dist/* RodgersAutoRepair:/home/rodgqwoo/public_html
rsync -aP ./dist/ RodgersAutoRepair:/home/rodgqwoo/public_html

