#!/bin/bash

source ~/dotfiles/scripts/install/commons/helpers.sh
source ~/dotfiles/scripts/install/commons/install.sh

source ~/dotfiles/scripts/install/arch/arch.sh
source ~/dotfiles/scripts/install/arch/aur.sh

distro=$(get_linux_distro)

make_dirs

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
    AUR_install
    install_global_npm
    #install_fonts
    #appimage_downloads
    #tar_gz_installs
    sudo pacman -Syu
    ;;
  *)
    echo "Unsupported or unknown distribution: $distro"
    ;;
esac

echo "now reboot and run postSetup script"
