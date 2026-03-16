#!/usr/bin/env bash
set -euo pipefail

git config --global branch.sort -committerdate
git config --global core.editor "$(brew --prefix)/bin/vim"
git config --global diff.algorithm histogram
git config --global diff.context 10
git config --global fetch.prune true
git config --global fetch.prunetags true
git config --global log.date iso
git config --global merge.conflictstyle zdiff3
git config --global pull.rebase true
git config --global push.default current
git config --global transfer.fsckobjects true

git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.cp cherry-pick
git config --global alias.ds "diff --staged"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.st status
