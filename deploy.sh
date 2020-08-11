#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# generate
hugo

# add commit
git add -A

msg="Build `date`"

if [ $# -eq 1 ]
  then msg="$1"
fi

# push to master
git commit -m "$msg"

git push origin master

cd ..
