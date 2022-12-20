#!/bin/bash

cd /root
rm -rf docker ;
git clone https://github.com/kartikmehta056/docker ;
docker system prune -af ;
cd /root/docker ;
docker build -t kartikmehta056/dockerfile:myimg .
docker push kartikmehta056/dockerfile:myimg
docker rm -f mycontainer
docker system prune -af
docker run -itd -p 80:80 --name mycontianer kartikmehta056/dockerfile:myimg
