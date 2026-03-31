#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ketna Bajaj
# Course: Open Source Software
# Chosen Software: Git

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "   Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Owner     : $OWNER"
        echo "Size      : $SIZE"
        echo "----------------------------------------"
    else
        echo "$DIR does not exist."
    fi
done

echo "========================================"

