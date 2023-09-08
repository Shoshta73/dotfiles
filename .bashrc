export BASH_IT="/home/borna/.bash_it"

export BASH_IT_THEME='bobby'

THEME_CHECK_SUDO='true'

# export BASH_IT_REMOTE='bash-it'

# export BASH_IT_DEVELOPMENT_BRANCH='master'

export GIT_HOSTING='git@git.domain.com'

unset MAILCHECK

export IRC_CLIENT='irssi'

export TODO="t"

#BASH_IT_PROJECT_PATHS="${HOME}/Projects:/Volumes/work/src"

export SCM_CHECK=true
#export SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
#export GITSTATUS_NUM_THREADS=8

#export SHORT_HOSTNAME=$(hostname -s)

#export SHORT_USER=${USER:0:8}

#export BASH_IT_COMMAND_DURATION=true
#export COMMAND_DURATION_MIN_SECONDS=1

#export SHORT_TERM_LINE=true

#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
    else
    color_prompt=
    fi
fi

unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\w\a\]$PS1"
    ;;
*)
    ;;
esac

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

export GPG_TTY=$(tty)

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="/opt/flutter/bin:$PATH"

. "$HOME/.cargo/env"

cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

fastfetch

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
