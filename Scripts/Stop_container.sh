## Stopping Docker container 

#!/bin/bash
set -x
docker ps
echo "ckeck the first container running"
Container_id=docker ps | awk -F " " '{Print $1}'

echo " remove container "
docker rm -f $Container_id
echo "check remaining containers "
docker ps



