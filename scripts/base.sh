#!/usr/bin/env bash
set -x
apt-get update -y
apt-get full-upgrade -y
apt-get install -y wget vim htop
apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release software-properties-common tshark jq
systemctl enable serial-getty@ttyS0.service
systemctl start serial-getty@ttyS0.service

