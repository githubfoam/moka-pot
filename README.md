# moka-pot

Travis (.com) dev branch:
[![Build Status](https://travis-ci.com/githubfoam/moka-pot.svg?branch=master)](https://travis-ci.com/githubfoam/moka-pot)  

debian buster64
~~~~
socat
net-tools
wapiti
recon-ng
hping3
hashcat https://github.com/hashcat/hashcat  
nmap https://nmap.org
traceroute
mtr
tcpdump https://www.tcpdump.org
ssdeep https://ssdeep-project.github.io/ssdeep/index.html
chromium
burpsuite
ghidra
docker
impacket https://github.com/SecureAuthCorp/impacket
nullinux https://github.com/m8r0wn/nullinux
nipper https://github.com/arpitn30/nipper-ng
~~~~
archlinux
~~~~
hcxdumptool https://github.com/ZerBea/hcxdumptool
hcxtools https://github.com/ZerBea/hcxtools
~~~~
blackarchlinux
~~~~
hcxdumptool https://github.com/ZerBea/hcxdumptool
hcxtools https://github.com/ZerBea/hcxtools
~~~~
~~~~
parrot https://www.parrotsec.org/
freebsd https://www.freebsd.org/
openbsd https://www.openbsd.org/
netbsd https://www.netbsd.org/
~~~~

~~~~
>vagrant up vg-mokapot-01

==> vg-mokapot-01: Running provisioner: ansible_local...
    vg-mokapot-01: Installing Ansible...
The requested Ansible version (2.9.1) was not found on the guest.
Please check the Ansible installation on your Vagrant guest system (currently: 2.9.4),
or adapt the provisioner `version` option in your Vagrantfile.
See https://docs.vagrantup.com/v2/provisioning/ansible_common.html#version
for more information.

TASK [Gathering Facts] *********************************************************
[DEPRECATION WARNING]: Distribution Ubuntu 19.04 on host vg-mokapot-01 should
use /usr/bin/python3, but is using /usr/bin/python for backward compatibility
with prior Ansible releases. A future Ansible release will default to using the
 discovered platform python for this host. See https://docs.ansible.com/ansible
/2.9/reference_appendices/interpreter_discovery.html for more information. This
 feature will be removed in version 2.12. Deprecation warnings can be disabled
by setting deprecation_warnings=False in ansible.cfg.
ok: [vg-mokapot-01]

~~~~
