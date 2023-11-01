gitClones() {
  git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  git clone --depth=1 https://github.com/Shoshta73/AstroNvim.git ~/.config/nvim
}

bashSymLinks() {
  rm -rf ~/.bashrc
  rm -rf ~/.bash_profile
  rm -rf ~/.bash_aliases

  ln -s ~/dotfiles/bash/.bashrc ~/.bashrc
  ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
  ln -s ~/dotfiles/bash/.bash_aliases ~/.bash_aliases
}

symlinks() {
  rm -rf ~/.profile
  ln -s ~/dotfiles/.profile ~/.profile
  bashSymLinks

  rm -rf .tmux.conf
  ln -s ~/dotfiles/terminal/tmux/.tmux.conf ~/.tmux.conf

  rm -rf ~/.alacritty.yml
  ln -s ~/dotfiles/terminal/alacritty/.alacritty.yml ~/.alacritty.yml

  rm -rf ~/.config/kitty/kitty.conf
  ln -s ~/dotfiles/terminal/kitty/kitty.conf ~/.config/kitty/kitty.conf

  rm -rf ~/.config/micro
  ln -s ~/dotfiles/editors/micro ~/.config/micro

  rm -rf ~/.config/helix
  ln -s ~/dotfiles/editors/helix ~/.config/helix

  ln -s ~/dotfiles/fonts/* ~/.local/share/fonts

  rm -rf ~/.gitconfig
  ln -s ~/dotfiles/programs/git/.gitconfig ~/.gitconfig

}
