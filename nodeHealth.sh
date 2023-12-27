#!/bin/bash

##################
# Author: Dhyan Shah
# Date: 27/12/23
#
# This scripts outputs the node health
#
# Version: v1
##################

set -x #Debug Mode
set -e # Exit the Script when there is a error
set -o pipefail 
# In case of exit, it only considers last statement but ignore pipe fail  
df -h

free -g

nproc

ps -ef | grep python | awk -F" " '{print $2}'
