#!/bin/bash

DATE=`date`
echo "Date is $DATE"

USERS=`ls`
echo -e "List of items present is directives are: \n $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"

