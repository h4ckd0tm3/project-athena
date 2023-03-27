#!/bin/bash

cd ../Curriculum
echo "# Table of contents" > SUMMARY.md
echo "* [Welcome](../README.md)" >> SUMMARY.md

for d in */; do
  if [ -f "$d/introduction.md" ]; then
    echo "" >> SUMMARY.md
    echo "### ${d%/}" >> SUMMARY.md
    echo "* [Introduction](./$(echo "$d" | sed 's/ /%20/g')introduction.md)" >> SUMMARY.md
  fi
done
