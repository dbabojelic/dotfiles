#!/bin/bash

git submodule update --init --recursive
# fzf additional
~/dotfiles/zsh/plugins/fzf/install --key-bindings --completion --no-update-rc --no-bash --no-fish &> /dev/null
rm -f ~/dotfiles/zsh/.fzf.zsh
mv ~/.fzf.zsh ~/dotfiles/zsh

rm -f ~/.zshrc
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
