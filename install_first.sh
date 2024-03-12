#!/bin/bash

# Update package databases
sudo pacman -Sy

# Install individual packages
sudo pacman -S --noconfirm  ryzenadj yay  meson base-devel ninja podman libgudev




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

# Install boot splash 
 yay -S plymouth-theme-aperture-git  

 sudo plymouth-set-default-theme -R aperture 
 

 # Install neros custom kernel 

 

# Define the URLs for the packages
HEADER_PKG_URL="https://github.com/rog-ally-gaming/linux-chimeraos/releases/download/6.1.81.nrflx3-2/linux-neroreflex-headers-6.1.81.nrflx3-2-x86_64.pkg.tar.zst"
KERNEL_PKG_URL="https://github.com/rog-ally-gaming/linux-chimeraos/releases/download/6.1.81.nrflx3-2/linux-neroreflex-6.1.81.nrflx3-2-x86_64.pkg.tar.zst"

# Download the packages
echo "Downloading the header package..."
curl -LO "$HEADER_PKG_URL"

echo "Downloading the kernel package..."
curl -LO "$KERNEL_PKG_URL"

# Install the packages
echo "Installing the header package..."
sudo pacman -U "$(basename "$HEADER_PKG_URL")"

echo "Installing the kernel package..."
sudo pacman -U "$(basename "$KERNEL_PKG_URL")"

echo "Installation complete!"


curl -L https://raw.githubusercontent.com/mengmeet/PowerControl/main/install.sh | sh

 

 



# Edit the GRUB configuration file
GRUB_CONFIG="/etc/default/grub"

# Add the parameters to the GRUB command line
GRUB_CMDLINE="amd_pstate=active amd_prefcore=enable iomem=relaxed"

# Append the parameters to the existing GRUB_CMDLINE_LINUX_DEFAULT
sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"/GRUB_CMDLINE_LINUX_DEFAULT=\"$GRUB_CMDLINE /" "$GRUB_CONFIG"

# Update GRUB
update-grub

echo "GRUB configuration updated. Please reboot your system for the changes to take effect."

