#!/bin/bash

shopt -s extglob

# Welcome
echo
echo "Welcome to Sam Lehman's dotfiles!"
echo

# Get root
read -s -p "[sudo] Enter password for $USER: " sudoPW
echo
echo
echo $sudoPW | sudo apt-get update > /dev/null

./script/base_install.sh

# Detect OS type
if [ "$OSTYPE" = "linux-gnu" ]; then
    if uname -r | grep Microsoft; then
        echo "Windows Subsystem for Linux environment detected."
        ./script/windows_install.sh
    else
        echo "Generic Linux system detected."
        ./script/linux_install.sh
    fi
elif [ "$OSTYPE" = "linux-musleabihf" ]; then
    echo "Hassio system detected."
    ./script/raspi_install.sh
elif [ "$OSTYPE" = "darwin" ]; then
    echo "MacOS system detected."
    ./script/macos_install.sh
elif [ "$OSTYPE" = "cygwin" ]; then
    echo "Cygwin environment detected."
    # POSIX compatibility layer and Linux environment emulation for Windows
elif [ "$OSTYPE" = "msys" ]; then
    echo "Msys environment detected."
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [ "$OSTYPE" = "win32" ]; then
    echo "Windows (MinGW) system detected."
    # I'm not sure this can happen.
elif [ "$OSTYPE" = "freebsd" ]; then
    echo "FreeBSD system detected."
    # ...
else
    # Unknown.
    echo "Could not determine system environment."
    exit 1
fi
echo

# Symlink Dotfiles
for file in .!(|.); do
    echo "$file"
    # echo "ln -s -f $file ~/$file"
done

exit 0
