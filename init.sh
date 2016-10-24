#!/bin/sh

git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-front-end.git src/afrostream-front-end
git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-back-end.git src/afrostream-back-end
git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-api-v1.git src/afrostream-api-v1
git clone -b docker https://afrostream-tech:d51e355769ddd0fd212084c35fb99f71ab4146b2@github.com/Afrostream/afrostream-billings.git src/afrostream-billings

docker-compose build
docker-compose up
