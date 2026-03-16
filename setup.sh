#!/usr/bin/env bash
set -euo pipefail

echo 'Caching password...'
sudo -K
sudo true;
clear

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$HERE/components/brew.sh"
brew bundle install --file "$HERE/brewfiles/shared"

for toolchain in docker git macos javascript python; do
    script="$HERE/components/$toolchain.sh"
    echo "Sourcing $script..."
    source "$script"
done
