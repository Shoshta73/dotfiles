#!/usr/bin/env bash

DISTRO=$(cat /etc/os-release | grep NAME | head -n 1 | sed 's/NAME=//;s/"//g')

source ~/dotfiles/install-scripts/fonts.sh
source ~/dotfiles/install-scripts/scriptedInstalls.sh
source ~/dotfiles/install-scripts/configs.sh
source ~/dotfiles/install-scripts/fromSource.sh

yayInstall() {
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ~/
}

unoSetup() {
  dotnet new -i Uno.Templates
  dotnet tool install -g uno.check
  dotnet tool update -g uno.check
}

needed=("git" "zip" "unzip" "wget" "curl" "tar")

case "$DISTRO" in
  "Arch Linux")
    programmingTools=("gcc" "clang" "go" "haxe" "cmake" "premake" "xmake" "zig" "python-pip") # "nodejs" "npm")
    terminalTools=("tmux" "yakuake" "alacritty" "tldr" "man" "trash-cli" "eza" "bat" "fastfetch")
    editors=("kate" "helix" "micro" "neovim" "visual-studio-code-bin" "sublime-text-4" "android-studio" "intellij-idea-community-edition" "jetbrains-fleet")
    utils=("meld" "gitg" "sublime-merge" "github-desktop-bin")
    browsers=("firefox" "google-chrome" "brave-bin" "vivaldi")
    office=("obsidian" "apostrophe" "ghostwriter" "xournalpp" "wps-office")
    unoPlatform=("gtk3" "dotnet-targeting-pack" "dotnet-sdk" "dotnet-host" "dotnet-runtime" "mono" "python" "mono-msbuild" "ninja" "gn" "aspnet-runtime")


    echo "Arch Linux"

    echo "sudo pacaman -Syu"
    sudo pacaman -Syu
    echo "sudo pacman -S --needed base-devel"
    sudo pacman -S --needed base-devel

    for tool in "${needed[@]}"; do
      echo "Installing: $tool"
      echo "sudo pacman -S --needed $tool"
      sudo pacman -S --needed "$tool"
    done

    yayInstall

    for tool in "${programmingTools[@]}"; do
      echo "Installing: $tool"
      echo "yay -S --needed $tool"
      yay -S --needed "$tool"
    done

    for tool in "${terminalTools[@]}"; do
      echo "Installing: $tool"
      echo "yay -S $tool"
      yay -S --needed "$tool"
    done

    for tool in "${editors[@]}"; do
      echo "Installing: $tool"
      echo "yay -S $tool"
      yay -S --needed "$tool"
    done

    for tool in "${utils[@]}"; do
      echo "Installing: $tool"
      echo "yay -S $tool"
      yay -S --needed "$tool"
    done

    for browser in "${browsers[@]}"; do
      echo "Installing: $browser"
      echo "yay -S $browser"
      yay -S --needed "$browser"
    done

    for uno in "${unoPlatform[@]}"; do
      echo "Installing: $uno"
      echo "yay -S $uno"
      yay -S --needed "$uno"
    done
    unoSetup

    download_fonts
    wgetInstalls
    scriptedInstalls
    npmInstalls
    gitClones
    symlinks
    sourceArch
    ;;

  "Ubuntu")
    echo "Ubuntu"

    echo "sudo apt update && sudo apt upagrade"
    sudo apt update && sudo apt upagrade
    echo "sudo apt install nala"
    sudo apt install nala

    for tool in "${needed[@]}"; do
      echo "Installing: $tool"
      echo "sudo nala install $tool"
      sudo nala install "$tool"
    done

    download_fonts
    wgetInstalls
    scriptedInstalls
    npmInstalls
    gitClones
    symlinks
    ;;
  *)
    echo "Unsupported distro: $DISTRO"
    exit 1
    ;;
esac

