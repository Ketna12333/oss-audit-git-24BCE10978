#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ketna Bajaj
# Course: Open Source Software
# Chosen Software: Git

PACKAGE="git"

echo "========================================"
echo "   FOSS Package Inspector"
echo "========================================"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed on this system."
    
    echo ""
    echo "Package Details:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Philosophy Note using case statement
case $PACKAGE in
    git)
        echo "Git represents decentralized collaboration and open development."
        ;;
    apache2)
        echo "Apache powers a large portion of the open web."
        ;;
    mysql)
        echo "MySQL demonstrates dual-licensing in open source."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

echo "========================================"
