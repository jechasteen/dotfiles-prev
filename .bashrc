#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# git aliases
alias gstat='git status'
alias gdiff='git diff'
alias g+.='git add .'

# General Aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias igrep='grep -i'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export PATH="$HOME/.cargo/bin:$PATH"

