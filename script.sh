#!/bin/bash
sudo apt update -y
sudo apt install ruby -y
sudo apt install wget -y
cd /home/ubuntu
wget https://aws-codedeploy-ap-southeast-2.s3.ap-southeast-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo apt install python-pip -y
sudo pip install awscli -y
apt install docker* -y
## need extra docker steps
