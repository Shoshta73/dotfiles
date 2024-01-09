#
# ~/.bash_profile
#

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Software/go" ] ; then
    PATH="$HOME/Software/go:$PATH"
fi

# export TERM='xterm-256color'
export TERMINAL='alacritty'

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/Software/flutter/bin:$PATH"
export PATH="$HOME/Software/v-analyzer/bin:$PATH"
export PATH="$HOME/Software/v:$PATH"

. "$HOME/.cargo/env"
