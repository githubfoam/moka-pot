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

vagrant box add "bento/debian-9.12" --provider=virtualbox
vagrant mutate "bento/debian-9.12" libvirt
# vagrant up --provider=libvirt
vagrant up --provider=libvirt "vg-foremansrv04"


vagrant box list #veridy installed boxes
vagrant status #Check the status of the VMs to see that none of them have been created yet
vagrant status
virsh list --all #show all running KVM/libvirt VMs
