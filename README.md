# AWX Execution Environment - SSH

This execution environment is based on `quay.io/ansible/awx-ee:24.6.1` with additional packages and a fix for SSH connectivity.

## Key Differences from Base Image

- Added user `awx` (uid 1000) to fix SSH "No user exists for uid 1000" error
- Additional packages: grub2-tools-minimal, openssl, gcc, python3.9-devel, openldap-devel, butane
- Additional tools: helm, kubeadm
- Additional Python packages: pynetbox, netaddr, pexpect, py-pure-client, purestorage, dnspython, python-ldap, passlib

## Building

```bash
docker build -t ghcr.io/gdmkonsult/awx-ee-ssh:latest .
docker push ghcr.io/gdmkonsult/awx-ee-ssh:latest
```

## Issue Reference

Fixes SSH connection issues when running Ansible playbooks from AWX with become escalation.
Related to: https://github.com/ansible/ansible-dev-tools/issues/381
