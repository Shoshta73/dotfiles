#!/bin/bash

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

get_linux_distro(){
  if [ -f "/etc/os-release" ]; then
    . /etc/os-release
    echo "$ID"
  fi
}

install_fonts(){
  mkdir -p ~/.local/share/fonts

  wget -P ~/.local/share/fonts https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Iosevka.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip

  unzip -d ~/.local/share/fonts/JetBrainsMono-2-304 ~/.local/share/fonts/JetBrainsMono-2.304.zip
  unzip -d ~/.local/share/fonts/JetBrainsMono ~/.local/share/fonts/JetBrainsMono.zip
  unzip -d ~/.local/share/fonts/Iosevka ~/.local/share/fonts/Iosevka.zip
  unzip -d ~/.local/share/fonts/IosevkaTerm ~/.local/share/fonts/IosevkaTerm.zip
  unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly ~/.local/share/fonts/NerdFontsSymbolsOnly.zip
  unzip -d ~/.local/share/fonts/FiraCode ~/.local/share/fonts/FiraCode.zip
  unzip -d ~/.local/share/fonts/FiraMono ~/.local/share/fonts/FiraMono.zip
  unzip -d ~/.local/share/fonts/UbuntuMono ~/.local/share/fonts/UbuntuMono.zip
  unzip -d ~/.local/share/fonts/Ubuntu ~/.local/share/fonts/Ubuntu.zip

  rm -rf ~/.local/share/fonts/*.zip
}

arch_install(){
  mkdir -p ~/.local/bin
  mkdir -P ~/bin
  if !command_exists "wget"; then
    sudo pacman -S wget
  fi
  if !command_exists "curl"; then
    sudo pacman -S curl
  fi
  if !command_exists "unzip"; then
    sudo pacman -S zip
  fi
  if ! command_exists "gh"; then
    sudo pacman -S github-cli
  fi

  # gh auth login

  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh -- insteractive

  # Untill i make my own polybar configuration
  git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
  wget -P ~/bin/ https://github.com/firecat53/networkmanager-dmenu/raw/main/networkmanager_dmenu
  if [ ! command_exists "calc" ]; then
    sudo pacman -S calc
  fi
  if [ ! command_exists "wal" ]; then
    sudo pacman -S python-pywal
  fi
  if [ ! command_exists "rofi" ]; then
    sudo pacman -S rofi
  fi
  if [ ! command_exists "polybar" ]; then
    sudo pacman -S polybar
  fi

  sudo pacman -S yakuake alacritty

}

distro=$(get_linux_distro)

case "$distro" in
  "ubuntu")
    echo "You're using Ubuntu."
    # Add Ubuntu-specific actions here
    ;;
  "debian")
    echo "You're using Debian."
    # Add Debian-specific actions here
    ;;
  "fedora")
    echo "You're using Fedora."
    # Add Fedora-specific actions here
    ;;
  "arch")
    echo "You're using Arch Linux."
    # Add Arch Linux-specific actions here
    arch_install
    install_fonts
    ;;
  *)
    echo "Unsupported or unknown distribution: $distro"
    ;;
esac
