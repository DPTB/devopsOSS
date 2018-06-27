#!/bin/bash

#	script for building docker images	#

# initial vars
DATE=`date -u`
IMAGE_BASE_DIR="/Users/tbodp/Desktop/myWork/GitHub/devopsOSS/docker/"


NO_ARGS=0
E_OPTERROR=85

if [ $# -eq "$NO_ARGS" ]    # Script invoked with no command-line args?
then
    echo "Usage: `basename $0`  image_name "
    exit $E_OPTERROR          # Exit and explain usage.
else
    echo "$DATE: Creating docker image for $1"
    /usr/local/bin/docker build  /Users/tbodp/Desktop/myWork/GitHub/devopsOSS/docker/vsftpd/ -t "${1}"
fi
exit 0