#!/bin/sh


curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-ci-multi-runner -y
sudo apt-get install git -y
sudo git clone http://github.com/gilleslabs/ansible-ci
sudo docker build -f /home/vagrant/ansible-ci/ansible/Dockerfile -t ansible-ci/ansible /home/vagrant/ansible-ci/ansible
sudo docker build -f /home/vagrant/ansible-ci/ubuntu14/Dockerfile -t ansible-ci/ubuntu14 /home/vagrant/ansible-ci/ubuntu14
sudo docker build -f /home/vagrant/ansible-ci/jenkins/Dockerfile -t ansible-ci/jenkins /home/vagrant/ansible-ci/jenkins
