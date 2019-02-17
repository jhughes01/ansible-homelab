#!/usr/bin/env bash

GIT_CLONE_DIR="/tmp/ansible-code"

# Parse arguments
GIT_REPO="$1"
GIT_REPO_BRANCH="$2"

rm -rf "$GIT_CLONE_DIR"

git clone "$1" --branch "$2" "$GIT_CLONE_DIR"

cd "$GIT_CLONE_DIR"

ansible-playbook "$HOSTNAME.yml"