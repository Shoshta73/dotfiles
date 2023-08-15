arch_install(){
  sudo pacman -S wget
  sudo pacman -S curl
  sudo pacman -S zip
  sudo pacman -S unzip
  sudo pacman -S github-cli
  sudo pacman -S tmux
  sudo pacman -S yakuake alacritty

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  gh auth login

  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  #~/.bash_it/install.sh -- insteractive

  # Untill i make my own polybar configuration
  git clone --depth=1 https://github.com/adi1090x/polybar-themes.git ~/polybar-themes
  wget -P ~/bin/ https://github.com/firecat53/networkmanager-dmenu/raw/main/networkmanager_dmenu

  sudo pacman -S python-pywal
  sudo pacman -S python-pip

  sudo pacman -S calc
  sudo pacman -S rofi
  sudo pacman -S polybar
  sudo pacman -S i3-wm
  sudo pacman -S ranger
  sudo pacman -S thunar
  sudo pacman -S tldr man trash-cli exa bat

  sudo pacman -S gcc clang
  sudo pacman -S cmake premake
  sudo pacman -S zig
  sudo pacman -S nodejs npm

  sudo pacman -S neovim
  sudo pacman -S helix

  sudo pacman -S discord

  sudo pacman -S nvidia

  sudo pacman -S haxe
  mkdir ~/haxelib && haxelib setup ~/haxelib
}
