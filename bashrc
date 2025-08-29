show git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Update the PS1 (prompt) to include the Git branch
export PS1='$(parse_git_branch) \u@\h:\w\$ '
