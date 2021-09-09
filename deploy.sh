#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

if [[ -n $(git status --porcelain) ]]
  then echo "There are uncommited changes to the repo, please commit any changes before deploying"
  exit 1
fi

#make sure subtree is up to date
git pull -s subtree

# Clear public content
rm -r public/*
# Build the project.
hugo

# Add changes to git.
git add public/*

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push
if [ -f .key_deploy ]; then
  git subtree push --prefix=public git@github.com:FairbanksHackathon/fairbankshackathon.github.io.git main
else
  git subtree push --prefix=public https://github.com/FairbanksHackathon/fairbankshackathon.github.io main
fi
