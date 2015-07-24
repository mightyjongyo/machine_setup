# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#This file contains aliases that may be useful accorss all machines.
#SVN alises
alias ss='svn status -u'
alias sup='svn update'
alias scd='cd `svn info | grep "Working Copy" | cut -d ':' -f 2 -`'
alias slog='svn log -v -l'
alias sdiff='svn diff -x -w'

#bash aliases
alias lh='ls -lh'
alias standardize='astyle --style=allman -n -s2 -v -c'
alias vi='vim'
#alias vim='vim -p'

function sublime {
  /usr/local/bin/sublime $@ &
}

function mk_feat {
  mkdir -p $1 && cp .svntool $1 && sed -i "s/artf[0-9]+/$1/g" $1/.svntool
}

# git aliases
alias gs='git status -sb'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset)' --abbrev-commit --date=relative"
alias gcd='cd $(git rev-parse --show-toplevel)'
alias glogf="git log --name-only --pretty=oneline"
alias glogd="git log -p"
alias gd='git difftool -y'
alias gb='git branch -a -v'
alias gsdiff='git diff --no-prefix'

function gsquash {
  git reset --soft HEAD~$1 && commit
}

