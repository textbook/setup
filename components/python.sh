#!/usr/bin/env bash
set -euo pipefail

brewfile="$HERE/brewfiles/python"
echo "Installing Python-related dependencies from $brewfile..."
brew bundle install --file "$brewfile"
