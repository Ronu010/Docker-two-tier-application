#!/bin/bash

apt update -y

apt install docker.io -y

systemctl start docker

systemctl enable docker


docker pull ronu010/two-tier-app:v1


docker run -d \
-p 5000:5000 \
--name two-tier-app \
ronu010/two-tier-app:v1