#!/usr/bin/env sh

git clone https://github.com/yasasw/vue-demo-page.git
Username: yasasw
Password: $1

cd vue-demo-page

cd src/plugins

wget https://raw.githubusercontent.com/$2/$3/$4/README.md -O $3.md

git add $3.md
git commit -m "New file $3"

git push https://github.com/yasasw/vue-demo-page.git
Username: yasasw
Password: $1