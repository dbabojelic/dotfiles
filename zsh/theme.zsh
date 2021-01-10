# to be able to use color names
autoload -U colors && colors

setopt PROMPT_SUBST

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[cyan]%}%2~%{$reset_color%} $(git_prompt_info)'
