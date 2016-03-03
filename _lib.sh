#!/bin/sh
export DATE_FORMAT="%Y%m%d%H%M%S"
export REPOS="repos.txt"
export STARS="stars.txt"
api() {
  if [ -z "$GITHUB_TOKEN" ]; then
    curl -s "$1"
  else
    curl -H "Authorization: Bearer $GITHUB_TOKEN" -s "$1"
  fi
}
