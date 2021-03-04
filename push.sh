#!/bin/bash

set -ex

git status
git add .
git status
git commit -am "updated"
git push origin master
