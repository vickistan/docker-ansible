# Install Ansible.
#
# Ansible Dockerfile
#
# https://github.com/dockerfile/ansible
#

# Pull base image.
FROM dockerfile/python
 
# Install Ansible.
RUN pip install ansible
 
#create ansible directory
RUN mkdir /etc/ansible
 
#Copy hosts to ansible directory
#Change these to appropriate hosts for the systems you want to ansiblize
RUN echo \
	"[DEV] \n 172.18.28.25 \n 172.18.28.26 \n 172.18.28.27 \n 172.18.28.28 \n \n [UAT] \n 172.18.27.21 \n 172.18.27.22 \n 172.18.27.23" > /etc/ansible/hosts
 
# install sudo apt-get update
RUN \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install python-software-properties unzip curl git wget pwgen
 
# install fish
RUN \
	add-apt-repository -y ppa:fish-shell/release-2 && \
	apt-get update && \
	apt-get install -y fish
 
#Set time stuff
RUN \
	echo "America/Indiana/Indianapolis" > /etc/timezone
	dpkg-reconfigure -f noninteractive tzdata
	locale-gen en_US.UTF-8 && sudo dpkg-reconfigure locales
 
# add a shared ubuntu user
RUN useradd -m -s /bin/bash -d /home/ubuntu ubuntu
RUN echo "# User rules for ubuntu\nubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-cloud-init-users
 
 
# Define working directory.
WORKDIR /data
 
# Define default command.
CMD ["bash"]
