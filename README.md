# AWX Execution Environment - SSH

This execution environment is based on `ghcr.io/gdmkonsult/awx-ee:new` with a fix for SSH connectivity issues.

## Key Differences from Base Image

- Added user `awx` (uid 1000) to fix SSH "No user exists for uid 1000" error

All other packages and tools are inherited from the base image `ghcr.io/gdmkonsult/awx-ee:new`.

## Building

GitHub Actions automatically builds and pushes the image on push to main branch.

Manual build:
```bash
docker build -t ghcr.io/gdmkonsult/awx-ee-ssh:main .
docker push ghcr.io/gdmkonsult/awx-ee-ssh:main
```

## Issue Reference

Fixes SSH connection issues when running Ansible playbooks from AWX with become escalation.
Related to: https://github.com/ansible/ansible-dev-tools/issues/381
