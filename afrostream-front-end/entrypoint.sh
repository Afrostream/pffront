#!/bin/sh

cd /usr/src/app
npm install npm@3 -g

echo "npm install all modules..."
npm install

cd node_modules
for i in koment-js video.js dashjs videojs-chromecast
do
	ln -fs afrostream-player/node_modules/$i .
done

cd ..

echo "running npm run dev..."
npm run dev
