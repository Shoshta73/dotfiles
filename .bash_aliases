# if [[ "$(pwd)" == "$HOME/Desktop" ]]; then
#     echo "You are on the desktop."
# else
#     echo "You are not on the desktop."
# fi
alias KnopD='sudo mv /usr/share/dbus-1/services/org.knopwob.dunst.service{,.disabled}'

# pomatez
alias pomodoro='Pomatez'
alias pomo='pomodoro'

#navigation
alias ..='cd ..'
alias 2b='cd ../..'
alias 3b='cd ../../..'

# znote
# alias znote='~/bin/znote --disable-gpu-sandbox'

# itch
# alias itch='~/.itch/app-25.6.2/itch --disable-gpu-sandbox'

# BLC
alias blc='BLC'
alias BLC='~/bin/BadlionClient'

# aseprite
# alias aseprite='~/Apps/aseprite/build/bin/aseprite'

#vim
alias nv='nvim'

# python
alias py='python3'

# gimp
alias gimp='GIMP'
alias GIMP='flatpak run org.gimp.GIMP'

# screensaver
alias scrsaver='xset s off && xset -dpms'

# solanum
alias solanum='flatpak run org.gnome.Solanum'

# boxy svg
alias boxy='boxy-svg'

# tmux
alias txl='tmux ls'
alias txn='tmux new -s'
alias tks='tmux kill-session -t'
alias txa='tmux a -t'

# npm
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nit='npm install-test'
alias nits='npm install-test --save'
alias nitd='npm install-test --save-dev'
alias nu='npm uninstall'
alias nus='npm uninstall --save'
alias nusd='npm uninstall --save-dev'
alias np='npm publish'
alias nup='npm unpublish'
alias nlk='npm link'
alias nod='npm outdated'
alias nrb='npm rebuild'
alias nud='npm update'
alias nr='npm run'
alias nls='npm list --depth=0 2>/dev/null'
alias nlsg='npm list -g --depth=0 2>/dev/null'
alias nt='npm test'

# npx
alias nx='npx'
alias nxplease='npx $(fc -ln -1)'
alias nxn='npx --no-install '
alias nxp='npx -p '
alias nxnp='npx --no-install -p '
alias nxq='npx -q '
alias nxnq='npx --no-install -q '
alias nxqp='npx -q -p '
alias nxnqp='npx --no-install -q -p '
alias nxni='npx --no-install --ignore-existing '
alias nxip='npx --ignore-existing -p '
alias nxnip='npx --no-install --ignore-existing -p '
alias nxqi='npx -q --ignore-existing '
alias nxniq='npx --no-install --ignore-existing -q '
alias nxiqp='npx --ignore-existing -q -p '
alias nxniqp='npx --no-install --ignore-existing -q -p '

alias g='git'
alias get='git'

# add
alias ga='git add'
alias gall='git add -A'
alias gap='git add -p'
alias gav='git add -v'

# branch
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbl='git branch --list'
alias gbla='git branch --list --all'
alias gblr='git branch --list --remotes'
alias gbm='git branch --move'
alias gbr='git branch --remotes'
alias gbt='git branch --track'
alias gdel='git branch -D'

# for-each-ref
alias gbc='git for-each-ref --format="%(authorname) %09 %(if)%(HEAD)%(then)*%(else)%(refname:short)%(end) %09 %(creatordate)" refs/remotes/ --sort=authorname DESC' # FROM https://stackoverflow.com/a/58623139/10362396

# commit
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcaa='git commit -a --amend -C HEAD' # Add uncommitted and unstaged changes to the last commit
alias gcam='git commit -v -am'
alias gcamd='git commit --amend'
alias gcm='git commit -v -m'
alias gci='git commit --interactive'
alias gcsam='git commit -S -am'

# checkout
alias gcb='git checkout -b'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcobu='git checkout -b chika/'
alias gcom='git checkout $(get_default_branch)'
alias gcpd='git checkout $(get_default_branch); git pull; git branch -D'
alias gct='git checkout --track'

# clone
alias gcl='git clone'

# clean
alias gclean='git clean -fd'

# cherry-pick
alias gcp='git cherry-pick'
alias gcpx='git cherry-pick -x'

# diff
alias gd='git diff'
alias gds='git diff --staged'
alias gdt='git difftool'

# archive
alias gexport='git archive --format zip --output'

# fetch
alias gf='git fetch --all --prune'
alias gft='git fetch --all --prune --tags'
alias gftv='git fetch --all --prune --tags --verbose'
alias gfv='git fetch --all --prune --verbose'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/$(get_default_branch)'
alias gup='git fetch && git rebase'

# log
alias gg='git log --graph --pretty=format:'\''%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset'\'' --abbrev-commit --date=relative'
alias ggf='git log --graph --date=short --pretty=format:'\''%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s'\'''
alias ggs='gg --stat'
alias ggup='git log --branches --not --remotes --no-walk --decorate --oneline' # FROM https://stackoverflow.com/questions/39220870/in-git-list-names-of-branches-with-unpushed-commits
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gnew='git log HEAD@{1}..HEAD@{0}' # Show commits since last pull, see http://blogs.atlassian.com/2014/10/advanced-git-aliases/
alias gwc='git whatchanged'

# ls-files
alias gu='git ls-files . --exclude-standard --others' # Show untracked files
alias glsut='gu'
alias glsum='git diff --name-only --diff-filter=U' # Show unmerged (conflicted) files

# gui
alias ggui='git gui'

# home
alias ghm='cd "$(git rev-parse --show-toplevel)"' # Git home

# merge
alias gm='git merge'

# mv
alias gmv='git mv'

# patch
alias gpatch='git format-patch -1'

# push
alias gp='git push'
alias gpd='git push --delete'
alias gpf='git push --force'
alias gpo='git push origin HEAD'
alias gpom='git push origin $(get_default_branch)'
alias gpu='git push --set-upstream'
alias gpunch='git push --force-with-lease'
alias gpuo='git push --set-upstream origin'
alias gpuoc='git push --set-upstream origin $(git symbolic-ref --short HEAD)'

# pull
alias gl='git pull'
alias glum='git pull upstream $(get_default_branch)'
alias gpl='git pull'
alias gpp='git pull && git push'
alias gpr='git pull --rebase'

# remote
alias gr='git remote'
alias gra='git remote add'
alias grv='git remote -v'

# rm
alias grm='git rm'

# rebase
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grm='git rebase $(get_default_branch)'
alias grmi='git rebase $(get_default_branch) -i'
alias grma='GIT_SEQUENCE_EDITOR=: git rebase  $(get_default_branch) -i --autosquash'
alias gprom='git fetch origin $(get_default_branch) && git rebase origin/$(get_default_branch) && git update-ref refs/heads/$(get_default_branch) origin/$(get_default_branch)' # Rebase with latest remote

# reset
alias gus='git reset HEAD'
alias gpristine='git reset --hard && git clean -dfx'

# status
alias gs='git status'
alias gss='git status -s'

# shortlog
alias gcount='git shortlog -sn'
alias gsl='git shortlog -sn'

# show
alias gsh='git show'

# svn
alias gsd='git svn dcommit'
alias gsr='git svn rebase' # Git SVN

# stash
alias gst='git stash'
alias gstb='git stash branch'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'  # kept due to long-standing usage
alias gstpo='git stash pop' # recommended for it's symmetry with gstpu (push)

## 'stash push' introduced in git v2.13.2
alias gstpu='git stash push'
alias gstpum='git stash push -m'

## 'stash save' deprecated since git v2.16.0, alias is now push
alias gsts='git stash push'
alias gstsm='git stash push -m'

# submodules
alias gsu='git submodule update --init --recursive'

# switch
# these aliases requires git v2.23+
alias gsw='git switch'
alias gswc='git switch --create'
alias gswm='git switch $(get_default_branch)'
alias gswt='git switch --track'

# tag
alias gt='git tag'
alias gta='git tag -a'
alias gtd='git tag -d'
alias gtl='git tag -l'

case $OSTYPE in
  darwin*)
    alias gtls="git tag -l | gsort -V"
    ;;
  *)
    alias gtls='git tag -l | sort -V'
    ;;
esac

# functions
function gdv() {
  git diff --ignore-all-space "$@" | vim -R -
}

function get_default_branch() {
  if git branch | grep -q '^. main\s*$'; then
    echo main
  else
    echo master
  fi
}

alias ls='ls --color=auto'
# BSD `ls` doesn't need an argument (`-G`) when `$CLICOLOR` is set.

# List directory contents
alias sl=ls
alias la='ls -AF' # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'
alias lf='ls -F'

alias _='sudo'

# Shortcuts to edit startup files
alias vbrc='${VISUAL:-vim} ~/.bashrc'
alias vbpf='${VISUAL:-vim} ~/.bash_profile'

# colored grep
# Need to check an existing file for a pattern that will be found to ensure
# that the check works when on an OS that supports the color option
alias grep='grep --color=auto'


alias shuf=gshuf


alias c='clear'
alias cls='clear'

alias edit='${EDITOR:-${ALTERNATE_EDITOR:-nano}}'
alias pager='${PAGER:=less}'

alias q='exit'

alias irc='${IRC_CLIENT:=irc}'

# Language aliases
alias rb='ruby'
alias py='python3'
alias ipy='ipython'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias piano='pianobar'

alias ..='cd ..'         # Go up one directory
alias cd..='cd ..'       # Common misspelling for going up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back

# Shell History
alias h='history'

# Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Directory
alias md='mkdir -p'
alias rd='rmdir'

# Shorten extract
alias xt='extract'

# Display whatever file is regular file or folder
function catt() {
  for i in "$@"; do
    if [[ -d "$i" ]]; then
      ls "$i"
    else
      cat "$i"
    fi
  done
}

alias fuck='echo NE JEDES DOVOLJNO KAJMAKA && sudo $(fc -ln -1)'

alias please=fuck
alias plz=please
alias fucking=sudo

