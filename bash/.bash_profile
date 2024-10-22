#
# ~/.bash_profile
#

# [[ -f $HOME/.bashrc ]] && source $HOME/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH=$PATH:/home/michael/bin
export PATH=$PATH:/usr/local/bin

alias rebm="git fetch && git rebase origin/master"
alias rebmain="git fetch && git rebase origin/main"
alias sshprep="eval \$(op signin) && sshkeys"
export PATH=$PATH:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/mjenkins/.bash/bin:/usr/local/go/bin:/Users/mjenkins/Projects/.go/bin
