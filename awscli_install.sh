#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

echo "Installing awscli begins"
sudo curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
sudo yum install unzip -y
unzip awscli-bundle.zip
./awscli-bundle/install -b ~/bin/aws
echo "Installing awscli ends"
