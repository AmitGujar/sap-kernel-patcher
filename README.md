### SAP Kernel Patcher
This script allows you to harness the power of ansible to upgrade your sap server kernel with single command.

### How to Install

```ansible-galaxy collection install amitgujar0.sap_kernelpatcher```

### What you need
- Download the latest kernel patch form SAP marketplace.
- Edit the location of the kernel patch in the script.
- Root access on the remote servers.
- Configure the sudoers for qbxadm user.
- Configure the ansible inventory file with the remote server details.


### Run the script

```sudo chmod 700 upgrade.sh```

```./upgrade.sh```