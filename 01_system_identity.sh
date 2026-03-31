#!/bin/bash
# Script 1: System Identity Report
# Author: Ketna Bajaj
# Course: Open Source Software
# Chosen Software: Git

# --- Variables ---
STUDENT_NAME="Ketna Bajaj"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
DISTRO=$(lsb_release -d | awk -F"\t" '{print $2}')
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# --- Display ---
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo ""
echo "License Notice  : Ubuntu is distributed under various open-source licenses including GPL."
echo "========================================"
