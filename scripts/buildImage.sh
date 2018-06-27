#!/bin/bash

#	script for building docker images	#

# initial vars
DATE=`date -u`
DOCKER_BIN="/usr/local/bin/docker"
IMAGE_BASE_DIR="/Users/tbodp/myWork/GitHub/devopsOSS/docker/"


NO_ARGS=0
E_OPTERROR=85

if [ $# -eq "$NO_ARGS" ]    # Script invoked with no command-line args?
then
    echo "Usage: `basename $0`  image tag "
    exit $E_OPTERROR          # Exit and explain usage.
else
    echo "$DATE: Creating docker image for $1"
    
    echo "/usr/local/bin/docker build -t ${1}:${2} ."
    echo "cd $IMAGE_BASE_DIR${1}"
    cd $IMAGE_BASE_DIR${1}
    /usr/local/bin/docker build -t ${1}:${2} .
fi
exit 0


