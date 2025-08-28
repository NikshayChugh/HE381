#!/usr/bin/env bash
# Usage: ./setup_github.sh <github-username> <repo-name>

if [ $# -ne 2 ]; then
  echo "Usage: $0 <github-username> <repo-name>"
  exit 1
fi

USERNAME=$1
REPO=$2

# Remove any old git history
rm -rf .git

# Initialize new repo
git init
git branch -M main

# Add everything
git add .
git commit -m "Initial commit"

# Add remote (HTTPS)
git remote add origin https://github.com/$USERNAME/$REPO.git

# Push
git push -u origin main
