#!/bin/bash
set -e
wget https://hashicorp-releases.yandexcloud.net/terraform/1.8.4/terraform_1.8.4_linux_amd64.zip 
unzip terraform_1.8.4_linux_amd64.zip
rm -rf unzip terraform_1.8.4_linux_amd64.zip
rm -rf LICENSE.txt && mv terraform /usr/local/bin
terraform version
cd /home/alex && touch .terraformrc &&
echo "provider_installation {" >>.terraformrc &&
echo "    network_mirror {" >>.terraformrc &&
echo "        url = \"https://terraform-mirror.yandexcloud.net/\"" >>.terraformrc &&
echo "        include = [\"registry.terraform.io/*/*\"]" >>.terraformrc &&
echo "}" >>.terraformrc &&
echo "    direct {" >>.terraformrc &&
echo "        exclude = [\"registry.terraform.io/*/*\"]" >>.terraformrc &&
echo "    }" >>.terraformrc &&
echo "}" >>.terraformrc
cat /home/alex/.terraformrc