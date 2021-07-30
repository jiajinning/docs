#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# nav into the build out dir
cd docs/.vuepress/dist

# git
git init
git add .
git commit -m 'deploy'
git remote add origin https://github.com/jiajinning/jiajinning.github.io.git
git push -f origin master
