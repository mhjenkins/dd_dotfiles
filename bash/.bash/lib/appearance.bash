#!/usr/bin/env bash

# colored grep
# export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='mt=1;33'
export GREP_COLOR='1;31;40'

# colored ls
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# Load the theme
if [[ $BASH_THEME ]]; then
    source "$BASHFILES/themes/$BASH_THEME/$BASH_THEME.theme.bash"
fi
