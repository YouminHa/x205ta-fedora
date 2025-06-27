#!/bin/sh -x

sudo dnf install acpid snapd

# acpid for hotkeys
sudo systemctl enable acpid

# snap
sudo ln -sf /var/lib/snapd/snap /snap
sudo systemctl enable snapd.socket
