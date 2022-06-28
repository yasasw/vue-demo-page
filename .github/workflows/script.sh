#!/usr/bin/env sh

git clone git@github.com:yasasw/vue-demo-page.git

cd vue-demo-page

cd src/plugins

wget https://raw.githubusercontent.com/$1/$2/$3/README.md -O $2.md

git add $2.md
git commit -m "New file $2"

git push -u origin master