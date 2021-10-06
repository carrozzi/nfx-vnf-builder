#!/usr/bin/env bash
set -x
apt-get update -y
apt-get full-upgrade -y
apt-get install -y wget vim htop
apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release software-properties-common tshark jq
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update -y
apt-get install -y docker-ce docker-ce-cli containerd.io
usermod -aG docker vnfuser

