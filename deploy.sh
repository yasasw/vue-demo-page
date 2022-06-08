#!/usr/bin/env sh

rm -r src/.vuepress/dist/
rm -r .vuepress

set -e

npm run build

cd src/.vuepress/dist

git init
git add -A
git commit -m "New Deployment"

git push -f git@github.com:yasasw/yasasw.github.io.git master
# git push -f git@github.com:yasasw/vue-demo-page.git master:gh-pages

cd -