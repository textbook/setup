#!/usr/bin/env bash
set -euo pipefail

brewfile="$HERE/brewfiles/docker"
echo "Installing Docker-related dependencies from $brewfile..."
brew bundle install --file "$brewfile"
