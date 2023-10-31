### SAP Kernel Patcher
This script allows you to harness the power of Ansible to upgrade your sap server kernel with a single command.

### How to Install

```ansible-galaxy collection install amitgujar0.sap_kernelpatcher```

### What you need
- Download the latest kernel patch from the SAP marketplace.
- Edit the location of the kernel patch in the script.
- Root access on the remote servers.
- Configure the sudoers for desired [e.g. qbxadm] user.
- Configure the ansible inventory file with the remote server details.
