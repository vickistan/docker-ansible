docker-ansible
==============

Dockerized ansible with mount of local /etc/ansible/playlists

The command I use to run this requires that there be a directory called /etc/ansible/playbooks locally.

Run:
docker run -i -t -v /etc/ansible/playbooks:/etc/ansible/playbooks:ro vickistan/docker-ansible /bin/bash

In order to use this locally, you need to have a file at /etc/ansible/hosts with the host IPs that you want to be affected by ansible commands. Of course, you also need to change the echo line that is used to create the hosts file or alternately, you can have a local /etc/ansible/hosts and use -v to mount all of /etc/ansible instead of only mounting the playbooks directory in the container.
