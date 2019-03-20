#!/bin/bash

# APT packages
cat ~/.dotfiles/packages/apt.txt | xargs sudo apt-get install
# Python 2 packages
pip install -r ~/.dotfiles/packages/pip.txt
# Python 3 packages
pip3 install -r ~/.dotfiles/packages/pip3.txt

exit 0
