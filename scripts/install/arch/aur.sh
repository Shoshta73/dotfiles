AUR_install(){
  pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  git clone https://aur.archlinux.org/snapd.git

  cd yay
  makepkg -si
  cd ~/

  cd snapd
  makepkg -si
  sudo systemctl enable --now snapd.socket
  sudo ln -s /var/lib/snapd/snap /snap
  cd ~/

  yay -S slack-desktop
  yay -S fastfetch
  yay -S spotify
}
