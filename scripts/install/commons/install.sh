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

scriptedinstalls(){
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  curl -s "https://get.sdkman.io" | bash
  source ~/.sdkman/bin/sdkman-init.sh

  sdk install java
  sdk install kotlin
  sdk install groovy
  sdk install maven
}

appimage_downloads(){
  wget -P ~/bin https://github.com/zidoro/pomatez/releases/download/v1.2.3/Pomatez-v1.2.3-linux.AppImage
  mv ~/bin/Pomatez-v1.2.3-linux.AppImage ~/bin/Pomatez
  sudo chmod +x ~/bin/Pomatez

  wget -P ~/bin https://lunatask.app/download/Lunatask-1.7.4.AppImage
  mv ~/bin/Lunatask-1.7.4.AppImage ~/bin/Lunatask
  sudo chmod +x ~/bin/Lunatask

  wget -P ~/bin https://github.com/alagrede/znote-app/releases/latest/download/znote-2.3.6.AppImage
  mv ~/bin/znote-2.3.6.AppImage ~/bin/znote
  sudo chmod +x ~/bin/znote
}

tar_gz_installs(){
  # wget -P ~/Apps https://discord.com/api/download?platform=linux&format=tar.gz
  # wget -P ~/Apps https://github.com/microsoft/vscode/archive/refs/tags/1.81.1.tar.gz
}

install_global_npm(){
  npm install -g npm@latest
  npm i -g yo @vscode/vsce yarn pnpm generator-code
  npm install -g purescript spago
  npm install -g  typescript
}
