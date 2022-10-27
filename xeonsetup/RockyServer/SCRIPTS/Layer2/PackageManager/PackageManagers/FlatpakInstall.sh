#!/bin/bash

sudo dnf install flatpak -y

curl https://flathub.org/repo/flathub.flatpakrepo | sudo tee /etc/flatpak/repo/flathub.flatpakrepo

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

