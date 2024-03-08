#!/bin/bash

# Update package databases
sudo pacman -Sy

# Install individual packages
sudo pacman -S --noconfirm steam ryzenadj yay asusctl rog-control-center meson base-devel ninja podman libgudev

# Install steam-deckify using pamac
pamac install --no-confirm steam-deckify

# Install gamescope-plus and its 32-bit version
yay -S  gamescope-plus multilib/lib32-gamescope-plus

# Install decky-installer from GitHub
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh

# Fix steam log in 
sed -i '/"SourceModInstallPath"/i \
"CompletedOOBE" "1" ' /home/$(whoami)/.steam/registry.vdf

# Copy return to game mode to Desktop
cp /etc/skel/Desktop/steamos-gamemode.desktop ~/Desktop/



# Edit the GRUB configuration file
GRUB_CONFIG="/etc/default/grub"

# Add the parameters to the GRUB command line
GRUB_CMDLINE="amd_pstate=guided amd_prefcore=enable iomem=relaxed"

# Append the parameters to the existing GRUB_CMDLINE_LINUX_DEFAULT
sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"/GRUB_CMDLINE_LINUX_DEFAULT=\"$GRUB_CMDLINE /" "$GRUB_CONFIG"

# Update GRUB
update-grub

echo "GRUB configuration updated. Please reboot your system for the changes to take effect."

