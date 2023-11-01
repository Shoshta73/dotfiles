wgetInstalls() {
  mkdir -p ~/bin

  wget -P ~/bin https://github.com/zidoro/pomatez/releases/download/v1.3.0/Pomatez-v1.3.0-linux-x86_64.AppImage
  mv ~/bin/Pomatez-v1.3.0-linux-x86_64.AppImage ~/bin/Pomatez
  sudo chmod +x ~/bin/Pomatez

  wget -P ~/bin https://github.com/lunatask/lunatask/releases/download/v1.7.7/Lunatask-1.7.7.AppImage
  mv ~/bin/Lunatask-1.7.7.AppImage ~/bin/Lunatask
  sudo chmod +x ~/bin/Lunatask

  wget -P ~/bin https://github.com/alagrede/znote-app/releases/download/v2.3.9/znote-2.3.9.AppImage
  mv ~/bin/znote-2.3.9.AppImage ~/bin/znote
  sudo chmod +x ~/bin/znote

  cd ~/bin
  curl -o eget.sh https://zyedidia.github.io/eget.sh
  shasum -a 256 eget.sh # verify with hash below
  bash eget.sh
  rm -rf eget.sh
  cd

  wget -P ~/bin https://github.com/firecat53/networkmanager-dmenu/raw/main/networkmanager_dmenu
}

scriptedInstalls() {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  curl -s "https://get.sdkman.io" | bash
  source ~/.sdkman/bin/sdkman-init.sh

  sdk install java
  sdk install kotlin
  sdk install groovy
  sdk install maven
}
