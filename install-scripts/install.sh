DISTRO=$(cat /etc/os-release | grep ID | awk -F= '{print $2}' | head -n 1)

source ./fonts.sh
source ./scriptedInstalls.sh
source ./configs.sh

yayInstall() {
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ~/
}

case "$DISTRO" in
  arch)
    echo "Arch Linux"
    yayInstall
    donwload_fonts
    wgetInstalls
    scriptedInstalls
    gitClones
    ;;
  *)
    echo "Unsupported distro: $DISTRO"
    exit 1
    ;;
esac

