#!/bin/bash

apt list --installed > ~/.dotfiles/packages/apt.txt
pip freeze -r ~/.dotfiles/packages/pip.txt
pip3 freeze -r ~/.dotifles/packages/pip3.txt

exit 0
