#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

echo "Installing Docker begins"
sudo mv /tmp/docker.repo /etc/yum.repos.d/docker.repo
sudo yum install -y docker-engine epel-release
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo yum install -y python-pip
sudo pip install docker-compose
echo "Installing Docker ends"
