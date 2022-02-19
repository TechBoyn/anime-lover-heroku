#!/bin/bash

cd /usr/src/app/.bin

mkdir ./dev
cd ./dev
mkdir ./tmp
cd ./tmp
git clone "https://github.com/TechBoyn/anime-lover-server.git" --depth 1 server
git clone "https://github.com/TechBoyn/anime-lover.git" --depth 1 web
mkdir ./anime-lover.Server
mkdir ./anime-lover.Server/build
mkdir ./anime-lover.Server/src
mkdir ./anime-lover.Server/templates
cd ./web
yarn install
yarn run build
mv ./build/* ../anime-lover.Server/build
cd ../server
mv main.py requirements.txt ../anime-lover.Server
mv ./src/* ../anime-lover.Server/src
mv ./templates/* ../anime-lover.Server/templates
cd ..
cp ../../../README.md ../../../LICENSE ./anime-lover.Server
cd anime-lover.Server
mv ./* ../..
cd ../../..
