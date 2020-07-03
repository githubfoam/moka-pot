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

# Run https://blackarch.org/strap.sh as root and follow the instructions.
curl -O https://blackarch.org/strap.sh
# The SHA1 sum should match: 9c15f5d3d6f3f8ad63a6927ba78ed54f1a52176b strap.sh
sha1sum strap.sh
# Set execute bit
chmod +x strap.sh
# Run strap.sh
./strap.sh

# As part of an alternative method of installation, build the blackarch packages from source.
# find the PKGBUILDs on github. To build the entire repo, use the blackman tool.

# First, you must install blackman. If the BlackArch package repository is setup on your machine,
# you can install blackman like:
# pacman -S blackman #Proceed with installation? [Y/n]
pacman -S --noconfirm blackman

#blackman -i aircrack-ng FIXES
pacman -S --noconfirm  base-devel #ERROR: Blackman needs base-devel to work
pacman -S --noconfirm  binutils  #ERROR: Blackman needs binutils to work

# Download, compile and install package:
#https://www.blackarch.org/tools.html
blackman -i aircrack-ng

# Download, compile and install whole category
#blackman -g <group>

# Download, compile and install all BlackArch tools
blackman -a

# To list blackarch categories
blackman -l

# To list category tools
#blackman -p <category>
blackman -p blackarch-forensic
