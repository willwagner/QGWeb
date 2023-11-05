#/bin/bash
git checkout gh-pages
git merge -m "build" master
git push
git checkout master
