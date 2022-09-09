#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"

if git diff --cached --name-only | grep --quiet "ui"
then
  echo "Checking styles and formatting"
  cd ui
  npm run style:all
fi
