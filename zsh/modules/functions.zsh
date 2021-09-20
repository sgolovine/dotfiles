#!/bin/bash

function path-search() {
  if [ -z "$1" ]; then
    echo "Branch not supplied"
    return 1
  fi
  
  branch=$(git branch | grep $1 | xargs)

  if [ -z "$branch" ]; then
    echo "No matching braches found"
    return 1
  fi

  git checkout $branch
  echo "Successfully checked out branch $branch"
  return 0
}

function save-notes() {
  cd $HOME/Documents/MyNotes
  git add -A
  git commit -m "Updated Notes"
  git push -u origin master
}

function git-sync() {
  echo "Syncing current git branch with $1"
  echo "Fetching..."
  $(which git) fetch origin $1
  echo "Pulling..."
  $(which git) pull origin $1
  echo "Completed!"
}