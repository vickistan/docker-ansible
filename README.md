docker-ansible
==============

Dockerized ansible with mount of local /etc/ansible/playlists

docker run -i -t -v /etc/ansible/playbooks:/etc/ansible/playbooks:ro vickistan/docker-ansible /bin/bash
