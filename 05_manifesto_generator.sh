#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ketna Bajaj
# Course: Open Source Software
# Chosen Software: Git

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I regularly use $TOOL, which reminds me that open source is about $FREEDOM." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it freely with the world." >> $OUTPUT
echo "I believe knowledge grows stronger when it is shared openly and collaboratively." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
echo "========================================"
