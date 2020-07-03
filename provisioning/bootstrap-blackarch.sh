#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

  echo "===================================================================================="
                        hostnamectl status
  echo "===================================================================================="
  echo "         \   ^__^                                                                  "
  echo "          \  (oo)\_______                                                          "
  echo "             (__)\       )\/\                                                      "
  echo "                 ||----w |                                                         "
  echo "                 ||     ||                                                         "
  echo "===================================================================================="

#https://www.blackarch.org/downloads.html#install-repo
#Installing on top of ArchLinux
#BlackArch Linux is compatible with existing/normal Arch installations.
#It acts as an unofficial user repository.

# Run https://blackarch.org/strap.sh as root and follow the instructions.
curl -O https://blackarch.org/strap.sh
# The SHA1 sum should match: 9c15f5d3d6f3f8ad63a6927ba78ed54f1a52176b strap.sh
sha1sum strap.sh
# Set execute bit
chmod +x strap.sh
# Run strap.sh
./strap.sh

#fetch/install the latest update available?
# pacman -Syyu --needed --overwrite '*' blackarch

#install tools from the blackarch repository
# To list all of the available tools, run
# pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
# To install all of the tools, run
# pacman -S blackarch

# To see the blackarch categories, run
# $ sudo pacman -Sg | grep blackarch
# pacman -Sg | grep blackarch

# To install a category of tools, run
# $ sudo pacman -S blackarch-<category>
#pacman -S blackarch-forensic #vg-mokapot-06: Enter a selection (default=all)
pacman -S --noconfirm blackarch-forensic


# Note - it maybe be necessary to overwrite certain packages when installing blackarch tools. If
# you experience "failed to commit transaction" errors, use the --needed and --overwrite switches
# For example:
# $ sudo pacman -Syyu --needed blackarch --overwrite='*'
