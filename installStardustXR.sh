#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e


# Clone the telescope repository
git clone https://github.com/StardustXR/telescope.git
cd telescope
# Take ownership of .sh scripts
sudo chown -R $USER:$USER *.sh
# Execute setup.sh
./setup.sh
# Execute hmd-setup.sh
./hmd-setup.sh
# Change into the server folder
cd repos
cd server
# Build and install the server
cargo build
cargo install --path .
# Return to the telescope folder
cd ..

echo "Installation and setup completed successfully."


