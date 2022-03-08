#!/bin/bash

cd /var/jenkins_home

if [[ `git status --porcelain` ]]; then
  git add .
  git commit -m "automated git commit" .
  git push 
else
  echo "no changes"
fi
