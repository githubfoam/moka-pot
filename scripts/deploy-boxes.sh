#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

# https://www.debian.org/releases/

# https://github.com/chef/bento/tree/master/packer_templates/debian
vagrant box add "bento/debian-9.12" --provider=virtualbox
vagrant mutate "bento/debian-9.12" libvirt
vagrant up --provider=libvirt "vg-mokapot-04"

#/opt/vagrant/embedded/gems/2.2.9/gems/vagrant-2.2.9/plugins/provisioners/ansible/cap/guest/posix/ansible_installed.rb:13:in `ansible_installed': undefined method `empty?' for nil:NilClass (NoMethodError)
#https://github.com/chef/bento/tree/master/packer_templates/debian
vagrant box add "bento/debian-10.4" --provider=virtualbox
vagrant mutate "bento/debian-10.4" libvirt
vagrant up --provider=libvirt "vg-mokapot-05"

# https://app.vagrantup.com/archlinux
vagrant box add "archlinux/archlinux" --provider=libvirt
vagrant up --provider=libvirt vg-arch-01

# # vagrant cloud debian box specific
# # adapter to enable NFS on this machine for Vagrant.
# # Please verify that `nfsd` is installed on your machine, and try again
# # HOST is not windows.
# # HOST is travisci bionic server
# apt-get install nfs-common nfs-kernel-server -qqy
#
# #https://www.vagrantup.com/docs/synced-folders/nfs.html#root-privilege-requirement
# TMP=$(mktemp) #temporary file to contain the sudoers-changes
# cat > $TMP <<EOF
# Cmnd_Alias VAGRANT_EXPORTS_ADD = /bin/su root -c echo '*' >> /etc/exports
# Cmnd_Alias VAGRANT_NFSD = /etc/init.d/nfs-kernel-server restart
# Cmnd_Alias VAGRANT_EXPORTS_REMOVE = /bin/sed -e /*/ d -ibak /etc/exports
# %admin ALL=(root) NOPASSWD: VAGRANT_EXPORTS_ADD, VAGRANT_NFSD, VAGRANT_EXPORTS_REMOVE
# EOF
# cat $TMP
# visudo -c -f $TMP # Check if the changes are OK
# # $? is a variable holding the exit code of the last run command
# if [ $? -eq 0 ]; then
#     # This computes! Starting up visudo with this script as first parameter
#     export EDITOR=$0 && export FILE_OK=$TMP && sudo -E visudo -f /etc/sudoers.d/vagrant_sudoers
# fi
#
# #https://app.vagrantup.com/debian/boxes/buster64
# vagrant box add "debian/buster64" --provider=libvirt
# vagrant up --provider=libvirt "vg-mokapot-02"
#
# #https://app.vagrantup.com/debian/boxes/stretch64
# vagrant box add "debian/stretch64" --provider=libvirt
# vagrant up --provider=libvirt "vg-mokapot-03"





vagrant box list #veridy installed boxes
vagrant status #Check the status of the VMs to see that none of them have been created yet
vagrant status
virsh list --all #show all running KVM/libvirt VMs
