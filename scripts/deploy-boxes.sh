#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

# vagrant box add "bento/ubuntu-19.10" --provider=virtualbox
# vagrant mutate "bento/ubuntu-19.10" libvirt
# # vagrant up --provider=libvirt
# vagrant up --provider=libvirt vg-mokapot-01


#https://github.com/chef/bento/tree/master/packer_templates/debian
vagrant box add "bento/debian-9.12" --provider=virtualbox
vagrant mutate "bento/debian-9.12" libvirt
vagrant up --provider=libvirt "vg-mokapot-04"

#https://github.com/chef/bento/tree/master/packer_templates/debian
vagrant box add "bento/debian-10.4" --provider=virtualbox
vagrant mutate "bento/debian-10.4" libvirt
vagrant up --provider=libvirt "vg-mokapot-05"

# vagrant cloud debian box specific
# adapter to enable NFS on this machine for Vagrant.
# Please verify that `nfsd` is installed on your machine, and try again
# HOST is not windows.
# HOST is travisci bionic server
apt-get install nfs-common nfs-kernel-server -qqy
# MUST BE ADDED
#https://www.vagrantup.com/docs/synced-folders/nfs.html#root-privilege-requirement

# https://www.debian.org/releases/

#https://app.vagrantup.com/debian/boxes/buster64
vagrant box add "debian/buster64" --provider=libvirt
vagrant up --provider=libvirt "vg-mokapot-02"

#https://app.vagrantup.com/debian/boxes/stretch64
vagrant box add "debian/stretch64" --provider=libvirt
vagrant up --provider=libvirt "vg-mokapot-03"





vagrant box list #veridy installed boxes
vagrant status #Check the status of the VMs to see that none of them have been created yet
vagrant status
virsh list --all #show all running KVM/libvirt VMs
