#!/usr/bin/env bash

cd ~/dotfiles
git submodule update --init install-scripts
cd ~/
bash ~/dotfiles/install-scripts/install.sh
