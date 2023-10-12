#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

#Install h8mail
git clone https://github.com/khast3x/h8mail.git
cd h8mail
sudo python3 setup.py install
