#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

echo ">>> Registering private docker registry: 192.168.65.50:5000"
sed -i -e "s/OPTIONS='/OPTIONS='--insecure-registry 192.168.65.50:5000 /" /etc/sysconfig/docker
systemctl restart docker
