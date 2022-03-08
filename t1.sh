#!/bin/bash


if [[ `git status --porcelain` ]]; then
  git add .
  git commit -m "automated git commit" .
  git push 
else
  echo "no changes"
fi
