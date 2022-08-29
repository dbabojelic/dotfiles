# HIST configuration
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory

# Use vim keybindings
bindkey -v
# bindkey -e

# Initialize completion
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select=4
zmodload zsh/complist

# Use incremental search
bindkey "^R" history-incremental-search-backward

# Fix backspace in insert mode
bindkey "^?" backward-delete-char
