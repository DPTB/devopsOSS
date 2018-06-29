#!/bin/bash

####

#	script for running docker images	#

# base vars
DATE=`date -u`
DOCKER_BIN="/usr/local/bin/docker"
IMAGE_BASE_DIR="/Users/tbodp/myWork/GitHub/devopsOSS/docker/"


NO_ARGS=0 
E_OPTERROR=85

if [ $# -eq "$NO_ARGS" ]    # Script invoked with no command-line args?
then
  echo "Usage:  `basename $0` container_name port_mapping volume image"
  echo "Example: `basename $0` "web 80:80 -v "/Users/tbodp/myWork/GitHub/devopsOSS/docker/alpine-httpd/httpd":/usr/local/apache2/htdocs/ httpd:alpine""
  exit $E_OPTERROR          # Exit and explain usage.
else
  echo "$DATE: running docker image for $1 "
fi  

# Running image

echo "running image ${1}"

$DOCKER_BIN  run -dit --name $1 -p $2 -v $3 $4 --name $5

##docker run -dit --name web -p 80:80 -v "/Users/tbodp/myWork/GitHub/devopsOSS/docker/alpine-httpd/httpd":/usr/local/apache2/htdocs/ httpd:alpine
