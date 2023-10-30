export BASH_IT="/home/borna/.bash_it"

# export BASH_IT_THEME='90210'
# export BASH_IT_THEME='agnoster'
# export BASH_IT_THEME='atomic'
# export BASH_IT_THEME='axin'
# export BASH_IT_THEME='bakke'
# export BASH_IT_THEME='barbuk'
# export BASH_IT_THEME='binaryanomaly'
# export BASH_IT_THEME='bira'
# export BASH_IT_THEME='bobby'
# export BASH_IT_THEME='bobby-pyhton'
# export BASH_IT_THEME='brainy'
# export BASH_IT_THEME='brunton'
# export BASH_IT_THEME='candy'
# export BASH_IT_THEME='clean'
# export BASH_IT_THEME='codeword'
# export BASH_IT_THEME='cooperkid'
# export BASH_IT_THEME='cupcake'
# export BASH_IT_THEME='demula'
# export BASH_IT_THEME='dos'
# export BASH_IT_THEME='doubletime'
# export BASH_IT_THEME='doubletime_multiline'
# export BASH_IT_THEME='doubletime_multiline_pyonly'
# export BASH_IT_THEME='dulcie'
# export BASH_IT_THEME='duru'
# export BASH_IT_THEME='easy'
# export BASH_IT_THEME='elixr'
# export BASH_IT_THEME='emperor'
# export BASH_IT_THEME='envy'
# export BASH_IT_THEME='essential'
# export BASH_IT_THEME='font'
# export BASH_IT_THEME='galligrey'
# export BASH_IT_THEME='gitline'
# export BASH_IT_THEME='hawaii50'
# export BASH_IT_THEME='iterate'
# export BASH_IT_THEME='kitsune'
# export BASH_IT_THEME='liquidprompt'
# export BASH_IT_THEME='luan'
export BASH_IT_THEME='mairan'
# export BASH_IT_THEME='mbriggs'
# export BASH_IT_THEME='metal'
# export BASH_IT_THEME='minimal'
# export BASH_IT_THEME='modern'
# export BASH_IT_THEME='modern-t'
# export BASH_IT_THEME='modern-time'
# export BASH_IT_THEME='morris'
# export BASH_IT_THEME='n0qorg'
# export BASH_IT_THEME='newin'
# export BASH_IT_THEME='norbu'
# export BASH_IT_THEME='nwinkler'
# export BASH_IT_THEME='nwinkler_random_colors'
# export BASH_IT_THEME='oh-my-posh'
# export BASH_IT_THEME='parrot'
# export BASH_IT_THEME='pete'
# export BASH_IT_THEME='powerline'
# export BASH_IT_THEME='powerline-multiline'
# export BASH_IT_THEME='powerline-naked'
# export BASH_IT_THEME='powerline-plain'
# export BASH_IT_THEME='powerturk'
# export BASH_IT_THEME='primer'
# export BASH_IT_THEME='pro'
# export BASH_IT_THEME='pure'
# export BASH_IT_THEME='purity'
# export BASH_IT_THEME='radek'
# export BASH_IT_THEME='rainbowbrite'
# export BASH_IT_THEME='ramses'
# export BASH_IT_THEME='rana'
# export BASH_IT_THEME='redline'
# export BASH_IT_THEME='rjorgenson'
# export BASH_IT_THEME='robbyrussell'
# export BASH_IT_THEME='roderik'
# export BASH_IT_THEME='sexy'
# export BASH_IT_THEME='simple'
# export BASH_IT_THEME='sirup'
# export BASH_IT_THEME='slick'
# export BASH_IT_THEME='standard'
# export BASH_IT_THEME='tonka'
# export BASH_IT_THEME='tonotdo' ##
# export BASH_IT_THEME='tylenol' ###
# export BASH_IT_THEME='wanelo' ###
# export BASH_IT_THEME='zitron'
# export BASH_IT_THEME='zork'
# export BASH_IT_THEME='/home/borna/.bash_it/themes/'
# export BASH_IT_THEME='/home/borna/.bash_it/themes/'
# export BASH_IT_THEME='/home/borna/.bash_it/themes/'

THEME_CHECK_SUDO='true'

# export BASH_IT_REMOTE='bash-it'

# export BASH_IT_DEVELOPMENT_BRANCH='master'

export GIT_HOSTING='git@github.com'

export PGH='git@github.com:Shoshta73/'

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
export PATH="$HOME/flutter/bin:$PATH"
export PATH="$HOME/software/v-analyzer/bin:$PATH"
. "$HOME/.cargo/env"

# cat ~/.cache/wal/sequences
# source ~/.cache/wal/colors-tty.sh

# fastfetch

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

PATH=~/.console-ninja/.bin:$PATH
#
# cd zozin/Dev-Tools
# source ~/personalVenv/bin/activate
# for theme in ${BASH_IT}/themes/*; do
#     # bash-it enable theme ${theme##*/}
#     bash-it preview ${theme##*/}
#     # echo "Previewing ${theme##*/} theme"
# done
