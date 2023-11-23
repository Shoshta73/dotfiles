KDE() {
  ln -sf ~/dotfiles/KDE/.gtkrc-2.0 ~/
  ln -sf ~/dotfiles/KDE/spectaclerc ~/.config/

  rm -rf ~/.config/gtk-3.0
  rm -rf ~/.config/gtk-4.0

  ln -sf ~/dotfiles/KDE/gtk* ~/.config/

  rm -rf ~/.config/kde.org/
  ln -sf ~/dotfiles/KDE/kde.org/ ~/.config/

  rm -rf ~/.config/kdedefaults/
  ln -sf ~/dotfiles/KDE/kdedefaults/ ~/.config/

  ln -sf ~/dotfiles/KDE/dolphinrc ~/.config/

  ln -sf ~/dotfiles/KDE/emaildefaults ~/.config/

  rm ~/.config/kate*
  ln -sf ~/dotfiles/KDE/kate* ~/.config/

  ln -sf ~/dotfiles/KDE/kactivitymanagerd* ~/.config/

  ln -sf ~/dotfiles/KDE/kc* ~/.config/

  ln -sf ~/dotfiles/KDE/kded5rc ~/.config/
  ln -sf ~/dotfiles/KDE/kdeglobals ~/.config/

  rm ~/.config/plasma-workspace

  ln -sf ~/dotfiles/KDE/kfontinstuirc ~/.config/
  ln -sf ~/dotfiles/KDE/kglobalshortcutsrc ~/.config/
  ln -sf ~/dotfiles/KDE/khotkeysrc ~/.config/
  ln -sf ~/dotfiles/KDE/kmixrc ~/.config/
  ln -sf ~/dotfiles/KDE/krunnerrc ~/.config/
  ln -sf ~/dotfiles/KDE/kscreenlockerrc ~/.config/
  ln -sf ~/dotfiles/KDE/ksmserverrc ~/.config/
  ln -sf ~/dotfiles/KDE/ktimezonedrc ~/.config/
  ln -sf ~/dotfiles/KDE/kwalletrc ~/.config/
  ln -sf ~/dotfiles/KDE/kwinrc ~/.config/
  ln -sf ~/dotfiles/KDE/kwinrulesrc ~/.config/
  ln -sf ~/dotfiles/KDE/kxkbrc ~/.config/
  ln -sf ~/dotfiles/KDE/plasma* ~/.config/
  ln -sf ~/dotfiles/KDE/power* ~/.config/
  ln -sf ~/dotfiles/KDE/systemsettingsrc ~/.config/
  ln -sf ~/dotfiles/KDE/trashrc ~/.config/
  ln -sf ~/dotfiles/KDE/Trolltech.conf ~/.config/

  rm ~/.config/xsettingsd
  ln -s ~/dotfiles/KDE/xsettingsd/ ~/.config/
}
