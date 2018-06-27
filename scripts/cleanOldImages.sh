#!/bin/bash

####

#	script for cleaning all running containers and removing all images

# initial vars
DATE=`date -u`
IMAGE_BASE_DIR="/Users/tbodp/Desktop/myWork/GitHub/devopsOSS/scripts/"

docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker images -q | xargs docker rmi --force

exit 0
