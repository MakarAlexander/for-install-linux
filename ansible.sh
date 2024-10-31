#!/bin/bash
set -e
sudo apt-cache policy ansible
sudo apt -y install ansible
ansible --version
sudo apt -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible --yes
sudo apt update
ansible-config init --disabled -t all > ansible.cfg