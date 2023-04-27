#!/bin/bash

cd ../Curriculum
echo "# Table of contents" > SUMMARY.md
echo "* [Welcome](../README.md)" >> SUMMARY.md

find . -mindepth 1 -maxdepth 1 -type d -exec bash -c '
  if [ -f "$1/introduction.md" ]; then
    echo "$1 $(echo "$1" | tr -dc "0-9")"
  fi
' _ {} \; | sort -k2n | while read d; do
  d=${d% *}
  echo "" >> SUMMARY.md
  echo "### ${d##*/}" >> SUMMARY.md
  echo "* [Introduction]($(echo "$d" | sed 's/ /%20/g')/introduction.md)" >> SUMMARY.md
done

