# Setup fzf
# ---------
if [[ ! "$PATH" == */home/dario/dotfiles/zsh/plugins/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/dario/dotfiles/zsh/plugins/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/dario/dotfiles/zsh/plugins/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/dario/dotfiles/zsh/plugins/fzf/shell/key-bindings.zsh"
