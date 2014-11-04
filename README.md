docker-ansible
==============

Dockerized ansible with mount of local /etc/ansible/playlists

The command I use to run this requires that there be a directory called /etc/ansible/playbooks locally.\n
Run:
docker run -i -t -v /etc/ansible/playbooks:/etc/ansible/playbooks:ro vickistan/docker-ansible /bin/bash
