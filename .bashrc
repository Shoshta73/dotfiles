__git_ps1() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

__git_branch() {
    local branch
    branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [[ -n $branch ]]; then
        echo " ($branch)"
    fi
}

# for signing git commits if you dont need this you can comment this line out or
# just remove it from this file
export GPG_TTY=$(tty)

# sourcing the bash config file
# alternatively you can put all the config files for bash shell in home directory
if [ -f .config/bash/.bash_config ]; then
    . .config/bash/.bash_config
fi

#important aliases fro bat, trashcan cli and exa

alias ls="exa -aG --color=always --icons --group-directories-first"
alias la="exa -a --color=always --icons --group-directories-first"

