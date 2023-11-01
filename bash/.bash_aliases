alias us='setxkbmap us'
alias hr='setxkbmap hr'

alias rm='trash -v'

#stupid brain
alias where='which'
alias sudp='sudo'

# pomatez
alias pomodoro='Pomatez'
alias pomo='pomodoro'

alias todo='Lunatask'
alias Todo='todo'

#navigation
alias ..='cd ..'
alias 2b='cd ../..'
alias 3b='cd ../../..'

# znote
alias znote='znote --disable-gpu-sandbox'

# itch
alias itch='itch --disable-gpu-sandbox'

# BLC
alias blc='BLC'
alias BLC='BadlionClient > /dev/null'

#vim
alias nv='nvim'
alias vim='nvim'
# alias v='nvim'

# python
alias py='python3'

# screensaver
alias scrsaver='xset s off && xset -dpms'

alias l="eza"
alias ls="eza -G --git --color=always --icons --group-directories-first"
alias la="eza -aG --git --color=always --icons --group-directories-first"
alias ll="eza -1laFbB --color=always --icons --group-directories-first"
alias lg="eza -1laFbB --git --color=always --icons --group-directories-first"
alias lt="eza -1laFbBT --git --color=always --icons --group-directories-first"

alias cat='bat'
alias cx='clear -x'

alias ssh='eval $(ssh-agent -s) && ssh-add ~/.ssh/GitHostAuth'

# personal venv
alias PPY='$HOME/personalVenv/bin/python'
alias PPip='$HOME/personalVenv/bin/pip'
alias PVACT='$HOME/personalVenv/bin/activate'

# personal venv apps
alias pie='$HOME/personalVenv/bin/tokei-pie'

# reload
alias reload='source ~/.bashrc'

# set mode
setmode ()
{
  case "$1" in
    blc)
      export __GL_THREADED_OPTIMIZATIONS=0
      ;;
    reset)
      case "$2" in
        blc)
          unset __GL_THREADED_OPTIMIZATIONS
          ;;
        *)
          echo "Invalid option. Usage: setmode [blc|reset{blc}]"
          ;;
      esac
      ;;
    *)
      echo "Invalid option. Usage: setmode [blc|reset{blc}]"
      ;;
  esac
}

create_env_scripts() 
{
  local verbose=false

  while getopts "v" opt; do
    case $opt in
      v)
        verbose=true
        ;;
      \?)
        echo "Usage: create_env_scripts [-v] <filename>"
        return 1
        ;;
    esac
  done
  shift $((OPTIND-1))

  if [ $# -eq 0 ]; then
    echo "Usage: create_env_scripts [-v] <filename>"
    return 1
  fi

  local filename="$1"

  for shell in bash zsh fish bat ps1; do
    case "$shell" in
      "bash" | "zsh" | "fish")
        shebang="#!/bin/$shell"
        if $verbose; then
          echo "Creating $filename.$shell with shebang: $shebang"
        fi
        echo -e "$shebang\n" > "$filename.$shell"
        ;;
      "bat")
        if $verbose; then
          echo "Creating $filename.$shell (Windows Batch script)"
        fi
        echo ":: This is a Windows Batch script; no shebang line is needed."
        touch "$filename.$shell"
        ;;
      "ps1")
        if $verbose; then
          echo "Creating $filename.$shell (PowerShell script)"
        fi
        echo "# This is a PowerShell script; no shebang line is needed."
        touch "$filename.$shell"
        ;;
    esac
  done
}
