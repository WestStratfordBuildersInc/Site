#!/bin/sh
echo "Logging in..."
git config --global user.name "WestStratfordBuildersInc"
git config --global user.email "85010047+WestStratfordBuildersInc@users.noreply.github.com"
git config credential.helper '!f() { sleep 1; echo "username=${GIT_USER}"; echo "password=${GIT_PASSWORD}"; }; f'
echo "Adding files for commit..."
git add .
echo "Please type the commit name:" && read commitname
git commit -m $commitname
echo "Pulling..."
git pull
echo "Pushing..."
git push