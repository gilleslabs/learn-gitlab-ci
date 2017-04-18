#!/bin/sh

  ###############  Launching GitLab ################

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-ci-multi-runner -y