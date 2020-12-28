# HIST configuration
HISTFILE=~/.zshhistfile
HISTSIZE=1000
SAVEHIST=1000

# Use vim keybindings
bindkey -v

# Initialize completion
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select=4
zmodload zsh/complist

# Use incremental search
bindkey "^R" history-incremental-search-backward
