#!/bin/bash

# This shell is for automating the installation of wrk tool executable files.

echo -e "\033[34m[TASK 1] Update & Upgrade system version\033[0m"
sudo apt update && sudo apt upgrade -y

echo -e "\033[34m[TASK 2] Install dependencies tools\033[0m"
sudo apt install build-essential libssl-dev git unzip

echo -e "\033[34m[TASK 3] Git wrk repo\033[0m"
git clone https://github.com/wg/wrk.git wrk

echo -e "\033[34m[TASK 4] Install wrk tool\033[0m"
cd wrk
sudo make
sudo cp wrk /usr/local/bin

echo -e "\033[34m[TASK 5] Remove script and file \033[0m"
cd ..
sudo rm -rf wrk install_wrk.sh 

echo -e "\033[34m===============Automatic installation completed===============\033[0m"
