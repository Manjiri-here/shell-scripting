#!/bin/bash

####

#Author: Manjiri
#Date: 30 July 2025
#
#This script output node health
#
#Version: 1

####
set -x  # debug mode
set -e
set -o pipefail

df -h
sysctl -n hw.ncpu
vm_stat

ps -ef |grep brace| awk '{print $2}'
