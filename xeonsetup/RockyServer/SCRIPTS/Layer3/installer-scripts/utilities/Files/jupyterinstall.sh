#!/bin/bash



##come back to this, will probably have to be done manually
sudo dnf install gcc python3-devel kernel-headers-$(uname -r)

pip3 install --user jupyter

jupyter notebook