#!/usr/bin/env bash

## start color definition
# shellcheck shell=bash
# shellcheck disable=SC2034
#
# A set of pre-defined color escape codes for use in prompts and with `echo`.

black="\[\e[0;30m\]"
red="\[\e[0;31m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
blue="\[\e[0;34m\]"
purple="\[\e[0;35m\]"
cyan="\[\e[0;36m\]"
white="\[\e[0;37m\]"
orange="\[\e[0;91m\]"

bold_black="\[\e[30;1m\]"
bold_red="\[\e[31;1m\]"
bold_green="\[\e[32;1m\]"
bold_yellow="\[\e[33;1m\]"
bold_blue="\[\e[34;1m\]"
bold_purple="\[\e[35;1m\]"
bold_cyan="\[\e[36;1m\]"
bold_white="\[\e[37;1m\]"
bold_orange="\[\e[91;1m\]"

underline_black="\[\e[30;4m\]"
underline_red="\[\e[31;4m\]"
underline_green="\[\e[32;4m\]"
underline_yellow="\[\e[33;4m\]"
underline_blue="\[\e[34;4m\]"
underline_purple="\[\e[35;4m\]"
underline_cyan="\[\e[36;4m\]"
underline_white="\[\e[37;4m\]"
underline_orange="\[\e[91;4m\]"

background_black="\[\e[40m\]"
background_red="\[\e[41m\]"
background_green="\[\e[42m\]"
background_yellow="\[\e[43m\]"
background_blue="\[\e[44m\]"
background_purple="\[\e[45m\]"
background_cyan="\[\e[46m\]"
background_white="\[\e[47;1m\]"
background_orange="\[\e[101m\]"

normal="\[\e[0m\]"
reset_color="\[\e[39m\]"

# These colors are meant to be used with `echo -e`
echo_black="\033[0;30m"
echo_red="\033[0;31m"
echo_green="\033[0;32m"
echo_yellow="\033[0;33m"
echo_blue="\033[0;34m"
echo_purple="\033[0;35m"
echo_cyan="\033[0;36m"
echo_white="\033[0;37;1m"
echo_orange="\033[0;91m"

echo_bold_black="\033[30;1m"
echo_bold_red="\033[31;1m"
echo_bold_green="\033[32;1m"
echo_bold_yellow="\033[33;1m"
echo_bold_blue="\033[34;1m"
echo_bold_purple="\033[35;1m"
echo_bold_cyan="\033[36;1m"
echo_bold_white="\033[37;1m"
echo_bold_orange="\033[91;1m"

echo_underline_black="\033[30;4m"
echo_underline_red="\033[31;4m"
echo_underline_green="\033[32;4m"
echo_underline_yellow="\033[33;4m"
echo_underline_blue="\033[34;4m"
echo_underline_purple="\033[35;4m"
echo_underline_cyan="\033[36;4m"
echo_underline_white="\033[37;4m"
echo_underline_orange="\033[91;4m"

echo_background_black="\033[40m"
echo_background_red="\033[41m"
echo_background_green="\033[42m"
echo_background_yellow="\033[43m"
echo_background_blue="\033[44m"
echo_background_purple="\033[45m"
echo_background_cyan="\033[46m"
echo_background_white="\033[47;1m"
echo_background_orange="\033[101m"

echo_normal="\033[0m"
echo_reset_color="\033[39m"

## end color definition

rightprompt()
{
  printf "%*s" $COLUMNS "$1"
}

# This is single file configuration file for simplicity of not dealing with
# bash imports
# Only other file used is .bash_aliases

if [ -f .bash_aliases ]; then
  . .bash_aliases
fi

# This is for signing commits with gpg key
# if you are not using it you can delete this line or comment it out
export GPG_TTY=$(tty)


# The following __git functions are for enabling git funtionality to be used
# in prompt
# __git_ps1() {
#   git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

# __git_branch() {
#   local branch
#   branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
#   if [[ -n $branch ]]; then
#     echo " ($branch)"
#   fi
# }

# # is_numeric() {
# #     [[ "$1" =~ ^[0-9]+$ ]]
# # }

# # # Function to check the commit status (ahead/behind)
# # commit_status() {
# #     local commits_ahead=$(git rev-list HEAD..origin/$(git rev-parse --abbrev-ref HEAD) --count)
# #     local commits_behind=$(git rev-list origin/$(git rev-parse --abbrev-ref HEAD)..HEAD --count)

# #     if is_numeric "$commits_ahead" && is_numeric "$commits_behind"; then
# #         echo "Ahead by: $commits_ahead commit(s), Behind by: $commits_behind commit(s)"
# #     else
# #         echo "Unable to determine commit status"
# #     fi
# # }

# # Check the number of changed and added files

## end __git


# bash prompt inspired by bobby from bash-it
update_prompt(){
  linux_distro=$(hostnamectl | grep "Operating System" | awk -F: '{print $2}')

  if [[ -f venv/bin/python ]]; then
    python_version=$( venv/bin/python --version )
  elif [[ -f .venv/bin/python ]]; then
    python_version=$( .venv/bin/python --version )
  elif [[ -f env/bin/python ]]; then
    python_version=$( env/bin/python --version )
  elif [[ -f .env/bin/python ]]; then
    python_version=$( .env/bin/python --version )
  fi

  connector="│"
  # PS1='\[$(tput sc; rightprompt "Custom Variable"; tput rc)\]left prompt > '

  left_line1="┌ "
  right_line1=" ┐"

  left_line2="└> "
  right_line2="${linux_distro} ┘"

  PS1='\[$(tput sc; rightprompt "\A${right_line1}"; tput rc)\]${left_line1}\w\n\[$(tput sc; rightprompt "${right_line2}"; tput rc)\]${left_line2}'

  if [ -n "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ]; then
    connector="│"
    connector1="├"
    connector2="┤"
    # PS1='\[$(tput sc; rightprompt "Custom Variable"; tput rc)\]left prompt > '

    left_line1="┌ "
    right_line1=" ┐"

    left_line2="└"

    branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    commits_behind=$(git rev-list HEAD..origin/$(git rev-parse --abbrev-ref HEAD) --count)
    commits_ahead=$(git rev-list origin/$(git rev-parse --abbrev-ref HEAD)..HEAD --count)
    changed_files=$(git diff --name-only | wc -l)
    staged_files=$(git diff --cached --name-only | wc -l)
    untracked_files=$(git ls-files --others --exclude-standard | wc -l)
    git_username=$(git config user.name)
    git_repo=$(basename "$(git rev-parse --show-toplevel)")
    git_branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    git_diff_stats=$(git diff --shortstat HEAD | awk '{print "+" $4 " | -" $1}')

    right_line2="S-${staged_files} M-${changed_files} U-${untracked_files} ┘"
    # PS1="\[$(tput sc; rightprompt "\A${right_line1}"; tput rc)\]${left_line1}$git_repo\${PWD#*\$(git rev-parse --show-toplevel)}\n\[$(tput sc; rightprompt "${right_line2}"; tput rc)\]${left_line2}"
    PS1='\[$(tput sc)$(rightprompt "$git_diff_stats${right_line1}")$(tput rc)\]${left_line1}git @ $git_repo${PWD#*$(git rev-parse --show-toplevel)}\n\[$(tput sc)$(rightprompt "${right_line2}")$(tput rc)\]${left_line2}[  $git_branch ↓$commits_behind ↑$commits_ahead ]> '

  else
  #   if [[ -n "$VIRTUAL_ENV" ]]; then
  #   else
  #   fi
  PS1='\[$(tput sc; rightprompt "\A${right_line1}"; tput rc)\]${left_line1}\w\n\[$(tput sc; rightprompt "${right_line2}"; tput rc)\]${left_line2}'
  fi
  node_version=""
  node_pm=""

  python_version=""
}

PROMPT_COMMAND='update_prompt'
