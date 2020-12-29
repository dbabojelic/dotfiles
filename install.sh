#!/bin/bash
git submodule update --init --recursive

# zsh  
~/dotfiles/zsh/plugins/fzf/install --key-bindings --completion --no-update-rc --no-bash --no-fish &> /dev/null
rm -f ~/dotfiles/zsh/.fzf.zsh
mv ~/.fzf.zsh ~/dotfiles/zsh

rm -f ~/.zshrc
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# vim
rm -rf ~/.vim
ln -sf ~/dotfiles/vim ~/.vim
rm -f ~/.vimrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

#tmux
rm -f ~/.tmux.conf
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
