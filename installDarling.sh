#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

sudo apt install cmake clang bison flex xz-utils libfuse-dev libudev-dev pkg-config libc6-dev-i386 libcap2-bin git git-lfs libglu1-mesa-dev libcairo2-dev libgl1-mesa-dev libtiff5-dev libfreetype6-dev libxml2-dev libegl1-mesa-dev libfontconfig1-dev libbsd-dev libxrandr-dev libxcursor-dev libgif-dev libpulse-dev libavformat-dev libavcodec-dev libswresample-dev libdbus-1-dev libxkbfile-dev libssl-dev llvm-dev
git clone --recursive https://github.com/darlinghq/darling.git

git lfs install
git pull
git submodule update --init --recursive

# Move into the cloned sources
cd darling

# Remove prior install of Darling
tools/uninstall

# Make a build directory
mkdir build && cd build

# Configure the build
cmake ..

# Build and install Darling
make
sudo make install

