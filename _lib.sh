#!/bin/sh
export DATE_FORMAT="%Y%m%d%H%M%S"
api() {
  if [ -z "$GITHUB_TOKEN" ]; then
    curl -s "$1"
  else
    curl -H "Authorization: Bearer $GITHUB_TOKEN" -s "$1"
  fi
}
