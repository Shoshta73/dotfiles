directory_exists() {
  if [ -d "$1" ]; then
    echo "Directory '$1' exists."
    return 0  # Directory exists
  else
    echo "Directory '$1' does not exist."
    return 1  # Directory does not exist
  fi
}

file_exists() {
  if [ -f "$1" ]; then
    echo "File '$1' exists."
    return 0
  else
    echo "File '$1' does not exist."
    return 1
  fi
}

command_exists() {
  if command -v "$1" >/dev/null 2>&1; then
    echo "Command $1 exists"
    return 0;
  else
    echo "Command $1 does not exist"
    return 1;
  fi
}

get_linux_distro(){
  if [ -f "/etc/os-release" ]; then
    . /etc/os-release
    echo "$ID"
  fi
}

make_dirs(){
  # execuatable directories
  mkdir -p ~/.local/bin
  mkdir -p ~/bin

  # app stash directory
  # and local software directory
  mkdir -p ~/Apps
  mkdir -p ~/opt

  mkdir -p ~/.local/share/fonts
  mkdir -p ~/.local/share/fonts/truetype
  mkdir -p ~/.local/share/fonts/opentype
}
