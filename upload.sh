#!/bin/sh
hugo
git add -A
git commit -m "add page"
git push origin master
