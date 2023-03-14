#!/bin/bash

# If a command fails then the deploy stops
set -e

printf "\033[0;32mUpdating Awesome Swift Cheatsheet...\033[0m\n"

# push your files to github
msg="saving file and pushing to github $(date)"
if [ -n "$*" ]; then
        msg="$*"
fi
git add .
git commit -m "$msg"

# Push source and build repos.
git push origin master

printf "upload success, enjoy your journey! "
