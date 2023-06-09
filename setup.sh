#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR


# # Set Oh My Zsh as the default shell
# export SHELL=/bin/zsh

# # Initialize Oh My Zsh
# if [ -f ~/.zshrc ]; then
#     source ~/.zshrc
# fi