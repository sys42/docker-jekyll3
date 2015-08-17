#!/bin/sh

## maps host port 10000 to container port 4000
## maps project directory to /project within container

docker run -ti --rm -v "$(pwd)":/project -p 127.0.0.1:30000:4000 $(cat REPO_AND_VERSION) \
       /sbin/my_init -- /sbin/remapuser app $(id -u) $(id -g) bash 
