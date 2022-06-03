#!/bin/sh
#
# Install some useful tools after bringing a fresh system online.

echo "Password is required to run apt install. Be sure to read this script first."

sudo apt update
sudo apt install \
    apt-transport-https \
    curl \
    htop \
    vim-scripts

if [ $DISPLAY ]; then
    echo "Password may be required to run snap install..."
    snap install firefox
    cat <<EOD

To install the Brave browser, follow the instructions at:

 * https://brave.com/linux/#release-channel-installation
EOD
fi