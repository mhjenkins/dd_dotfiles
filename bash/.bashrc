#
# ~/.bashrc
#

export DOTFILES="${HOME}/.bash"
export BASHFILES="${HOME}/.bash"
[[ -e "${DOTFILES}/setup.sh" ]] && source "${DOTFILES}/setup.sh"

#direnv
eval "$(direnv hook bash)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source /usr/share/nvm/init-nvm.sh
