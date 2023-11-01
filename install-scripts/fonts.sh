donwload_fonts(){
  mkdir -p ~/.local/share/fonts

  wget -P ~/.local/share/fonts https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip & unzip -d ~/.local/share/fonts/JetBrainsMono-2-304 ~/.local/share/fonts/JetBrainsMono-2.304.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Iosevka.zip & unzip -d ~/.local/share/fonts/JetBrainsMono ~/.local/share/fonts/JetBrainsMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip & unzip -d ~/.local/share/fonts/Iosevka ~/.local/share/fonts/Iosevka.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip & unzip -d ~/.local/share/fonts/IosevkaTerm ~/.local/share/fonts/IosevkaTerm.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip & unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly ~/.local/share/fonts/NerdFontsSymbolsOnly.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip & unzip -d ~/.local/share/fonts/FiraCode ~/.local/share/fonts/FiraCode.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip & unzip -d ~/.local/share/fonts/FiraMono ~/.local/share/fonts/FiraMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip & unzip -d ~/.local/share/fonts/UbuntuMono ~/.local/share/fonts/UbuntuMono.zip
  wget -P ~/.local/share/fonts https://github.com/mishamyrt/Lilex/releases/download/2.200/Lilex.zip & unzip -d ~/.local/share/fonts/Ubuntu ~/.local/share/fonts/Ubuntu.zip
  wget -P ~/.local/share/fonts -O LilixNerd.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Lilex.zip & unzip -d ~/.local/share/fonts/Lilex ~/.local/share/fonts/Lilex.zip
  unzip -d ~/.local/share/fonts/LilexNerd ~/.local/share/fonts/LilexNerd.zip

  rm -rf ~/.local/share/fonts/*.zip
}
