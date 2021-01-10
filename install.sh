#!/bin/bash

function help_and_exit {
    echo One argument required and should be one of the following:
    echo '    all, zsh, vim, tmux, git;'
    echo depending on what you want to install.
    exit 1
}

if [ $# -ne 1 ]; then
    help_and_exit
fi

git submodule update --init --recursive

function zsh {
  ~/dotfiles/zsh/plugins/fzf/install --key-bindings --completion --no-update-rc --no-bash --no-fish &> /dev/null
  rm -f ~/dotfiles/zsh/.fzf.zsh
  mv ~/.fzf.zsh ~/dotfiles/zsh
  rm -f ~/.zshrc
  ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
}

function vim {
  rm -rf ~/.vim
  ln -sf ~/dotfiles/vim ~/.vim
  rm -f ~/.vimrc
  ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
}

function tmux {
  rm -f ~/.tmux.conf
  ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
}

function git {
  rm -f ~/.gitconfig
  ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
}

for i in "$@"
do
    case $i in
        all)
            zsh
            vim
            tmux
            git
            ;;
        zsh)
            zsh
            ;;
        vim)
            vim
            ;;
        tmux)
            tmux
            ;;
        git)
            git
            ;;
        *)
            help_and_exit
            ;;
    esac
done
