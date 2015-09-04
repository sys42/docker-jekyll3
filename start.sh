#!/bin/sh

if [ $# -eq 0 ]; then
  # (*) map container port 4000 to port 4000 on all host interfaces
  # (*) mounts current working directory to "/project" within container
  # (*) remaps container user 'app' to uid/gid of user starting the script
  # (*) starts jekyll server in current working directory
  docker run -ti --rm -v "$(pwd)":/project -p 4000:4000 -w /project \
         sys42/docker-jekyll3:latest \
         remapuser app $(id -u) $(id -g) \
         /bin/bash -lic "js"
else
  # If arguments are given to this script they are interpreted as
  # commands to run within the container.
  # To start an interactive shell just use: 
  #
  #  ./start.sh bash
  #
  docker run -ti --rm -v "$(pwd)":/project -p 4000:4000 -w /project \
         sys42/docker-jekyll3:latest \
         remapuser app $(id -u) $(id -g) \
         "$@"
fi
