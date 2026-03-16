#!/usr/bin/env bash
set -euo pipefail

echo 'Caching password...'
sudo -K
sudo true;
clear

HERE="$(dirname "$0")"

source "$HERE/components/brew.sh"
