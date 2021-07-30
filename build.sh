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
git commit -m 'deploy docs by jiajinning'
git remote add origin https://github.com/jiajinning/docs.git
git push -f origin master:gh-pages
