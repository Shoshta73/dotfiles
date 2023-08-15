source postinstall/helpers.sh

source postinstall/symlinks.sh
source postinstall/snapInstall.sh
source postinstall/gitclone.sh

clean_for_symlinks
create_symlinks
snap_isnstalls
