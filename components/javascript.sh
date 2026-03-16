#!/usr/bin/env bash
set -euo pipefail

if command -v nvm; then
    echo 'nvm already installed'
else
    echo 'Installing nvm...'
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

echo 'Installing latest Node LTS...'
nvm install --lts

brewfile="$HERE/brewfiles/javascript"
echo "Installing JavaScript-related dependencies from $brewfile..."
brew bundle install --file "$brewfile"
