#!/bin/bash

curl https://www.archlinux.org/mirrorlist/?country=GB | sed 's/#Server/Server/g' > /etc/pacman.d/mirrorlist

echo "updating..."
pacman -Syu --noconfirm

echo "Installing python..."
pacman -S python2 --noconfirm

exit 0
