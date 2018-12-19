#!/bin/bash

sudo yum update -y

echo "Install Packer"
sudo yum remove -y java
sudo yum install -y java-1.8.0-openjdk
sudo wget https://releases.hashicorp.com/packer/1.3.3/packer_1.3.3_linux_amd64.zip
sudo unzip packer_1.3.3_linux_amd64.zip -d /usr/lib/packer && sudo chmod +x /usr/lib/packer
sudo ln -s /usr/lib/packer/packer /usr/bin/packer
sudo rm packer_1.3.3_linux_amd64.zip

