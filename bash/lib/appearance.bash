#!/usr/bin/env bash

# colored grep
GREP_OPTIONS='--color=auto'
alias grep="grep $GREP_OPTIONS"
export GREP_COLOR='1;33'

# colored ls
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# Load the theme
if [[ $BASH_THEME ]]; then
    source "$DOTFILES/bash/themes/$BASH_THEME/$BASH_THEME.theme.bash"
fi
