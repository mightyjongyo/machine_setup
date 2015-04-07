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
alias scd='cd `svn info | grep "Working Copy" | cut -d ':' -f 2 -`'
alias slog='svn log -l'
alias sdiff='svn diff -x -w'

#bash aliases
alias lh='ls -lh'
alias standardize='astyle --style=allman -n -s2 -v -c'
alias vi='vim'
#alias vim='vim -p'

function sublime {
  /usr/local/bin/sublime $@ &
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

function co_collab {
  path=$2
  dest=$3
  if [ "$path" != "trunk" ]
  then
    path="https://mdi.collab.net/svn/repos/$1/branches/$2"
  else
    path="https://mdi.collab.net/svn/repos/$1/$2"
  fi
  echo "Checking out $path"
  svn co $path $dest
}

function branch_collab {
 repo=$1
 prefix="https://mdi.collab.net/svn/repos/$repo"
 from=$2
 artf=$3

 echo "Copying $prefix/$from to $prefix/branches/$artf ..."

 svn copy $prefix/$2 $prefix/branches/$artf -m "[$artf] Creating branch for $artf"
}

function tag_collab {
 repo=$1
 prefix="https://mdi.collab.net/svn/repos/$repo"
 from=$2
 tagname=$3
 artf=$4

 echo "Copying $prefix/$from to $prefix/tags/$tagname ..."

 svn copy $prefix/$2 $prefix/tags/$tagname -m "[$artf] Creating tag for release"
}

function merge_collab {
  repo=$1
  prefix="https://mdi.collab.net/svn/repos/$repo"
  from=$2

  echo "Merging $prefix/$from to `pwd`"
  svn merge --reintegrate $prefix/$from
}

function release_collab {
  repo=$1
  relver=$2
  path="https://mdi.collab.net/svn/repos/$1/tags/$relver"
  echo "Checking out $path and building"
  svn co $path
  cd $relver
  make
}

function help_collab {
echo "co_collab <repo> [trunk|artf<ID>]"
echo "branch_collab <repo> [trunk|rel_path] <artf_name>"
echo "tag_collab <repo> [trunk|rel_path] <tag_name> <artf_name>"
echo "merge_collab <repo> [rel_path_to_merge]"
echo "release_collab <repo> <release_ver>"
}
