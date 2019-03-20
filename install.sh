#!/bin/bash

shopt -s extglob

# Welcome
echo
echo "Welcome to Sam Lehman's dotfiles!"
echo

# Detect OS type
echo "Getting environment..."
if [ "$OSTYPE" = "linux-gnu" ]; then
    if uname -r | grep Microsoft; then osname="WSL"
    else osname="Generic Linux"; fi
elif [ "$OSTYPE" = "linux-musleabihf" ]; then osname="Hassio"
elif [ "$OSTYPE" = "darwin" ]; then osname="MacOS"
else osname=$OSTYPE
fi
echo
echo "$osname environment detected."
echo

# Get root
read -s -p "[sudo] Enter password for $USER: " sudoPW
echo
echo

# Symlink Dotfiles
echo "Symlinking dotfiles..."
for file in .!(|.); do
    echo "$file --> ~/$file"
    echo "ln -s -f $file ~/$file"
done
echo

# Update software sources
echo "Updating software sources..."
echo $sudoPW | sudo apt-get update > /dev/null
echo

# Install common software
echo "Installing base..."
./script/base_install.sh

# Use my templates and scripts
echo "Installing scripts..."
# git clone https://github.com/samlehman617/scripts ~/bin
echo "Installing templates..."
# git clone https://github.com/samlehman617/vim-templates ~/templates

# Make other directories
echo "Creating home directory structure..."
mkdir -p ~/projects
mkdir -p ~/tmp

echo
echo "Done."
exit 0
