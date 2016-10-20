#!/bin/sh

git clone https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-front-end.git afrostream-front-end/src
git clone https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-back-end.git afrostream-back-end/src
git clone https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-api-v1.git afrostream-api-v1/src

docker-compose build
docker-compose up
