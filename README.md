docker-ansible
==============

Dockerized ansible with mount of local /etc/ansible/playlists

The command I use to run this requires that there be a directory called /etc/ansible/playbooks locally.

Run:
docker run -i -t -v /etc/ansible/playbooks:/etc/ansible/playbooks:ro vickistan/docker-ansible /bin/bash

In order to use this locally, you need to have a file at /etc/ansible/hosts with the host IPs that you want to be affected by ansible commands.
