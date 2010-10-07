# Aliases
alias hg='hg'
alias hgst='hg status'
alias hgl='hg pull'
alias hgup='git fetch && git rebase'
alias hgp='hg push'
alias hgd='hg diff | mate'
alias hgdv='hg diff -w "$@" | vim -R -'
alias hgc='git commit -v'
alias hgca='git commit -v -a'
alias hgb='git branch'
alias hgba='git branch -a'
alias hgcount='git shortlog -sn'
alias hgcp='git cherry-pick'


# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(hg symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advangate of the previous function
alias hggpull='hg pull origin $(current_branch)'
alias hggpush='hg push origin $(current_branch)'
alias hggpnp='hg pull origin $(current_branch) && hg push origin $(current_branch)'
