#
# ~/.bash_profile
#

[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export BASH_SILENCE_DEPRECATION_WARNING=1

alias rebm="git fetch && git rebase origin/master"
