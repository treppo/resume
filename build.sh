#!/bin/sh

./node_modules/resume-cli/index.js export --theme classy --format html index &&
  expand -t 4 index.html | sed 's/ *$//' > tmp.html && mv tmp.html index.html
