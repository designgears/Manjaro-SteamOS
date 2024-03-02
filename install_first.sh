#!/bin/bash

# Update package databases
sudo pacman -Sy

# Install individual packages
sudo pacman -S --noconfirm steam yay asusctl rog-control-center meson base-devel ninja podman libgudev

# Install steam-deckify using pamac
pamac install --no-confirm steam-deckify

# Install gamescope-plus and its 32-bit version
yay -S --noconfirm gamescope-plus multilib/lib32-gamescope-plus

# Install decky-installer from GitHub
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh

# Fix steam log in 
sudo sed -i '/"SourceModInstallPath"/i \
"CompletedOOBE" "1" ' /home/$(whoami)/.steam/registry.vdf

# Copy return to game mode to Desktop
cp /etc/skel/Desktop/steamos-gamemode.desktop ~/Desktop/

# Download the Neroreflex files
wget https://github.com/rog-ally-gaming/linux-chimeraos/releases/download/v6.1.78.nrflx2-1/linux-neroreflex-6.1.78.nrflx2-1-x86_64.pkg.tar.zst
wget https://github.com/rog-ally-gaming/linux-chimeraos/releases/download/v6.1.78.nrflx2-1/linux-neroreflex-headers-6.1.78.nrflx2-1-x86_64.pkg.tar.zst

# Install the Neroreflex packages
sudo pacman -U linux-neroreflex-6.1.78.nrflx2-1-x86_64.pkg.tar.zst
sudo pacman -U linux-neroreflex-headers-6.1.78.nrflx2-1-x86_64.pkg.tar.zst

# Download and install Rogue Enemy
wget https://github.com/rog-ally-gaming/rogue-enemy/releases/download/v2.2.3-2/rogue-enemy-2.2.3-2-x86_64.pkg.tar.zst
sudo pacman -U rogue-enemy-2.2.3-2-x86_64.pkg.tar.zst

# Install special Mesa build

# Array of package URLs
urls=(
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-libva-mesa-driver-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-mesa-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-mesa-debug-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-mesa-vdpau-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-opencl-clover-mesa-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-opencl-rusticl-mesa-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-vulkan-mesa-layers-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-vulkan-radeon-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/lib32-vulkan-swrast-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/libva-mesa-driver-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/mesa-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/mesa-debug-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/mesa-vdpau-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/opencl-clover-mesa-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/opencl-rusticl-mesa-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/vulkan-mesa-layers-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/vulkan-radeon-24.0.1-2-x86_64.pkg.tar.zst"
    "https://github.com/rog-ally-gaming/mesa-chimeraos/releases/download/v24.0.1-2/vulkan-swrast-24.0.1-2-x86_64.pkg.tar.zst"
)

# Download and install packages
for url in "${urls[@]}"
do
    wget "$url" && sudo pacman -U --noconfirm "$(basename $url)"
done
# Add AMD pstate commands to GRUB
# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Edit the GRUB configuration file
GRUB_CONFIG="/etc/default/grub"

# Add the parameters to the GRUB command line
GRUB_CMDLINE="amd_pstate=active amd_prefcore=enable"

# Append the parameters to the existing GRUB_CMDLINE_LINUX_DEFAULT
sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"/GRUB_CMDLINE_LINUX_DEFAULT=\"$GRUB_CMDLINE /" "$GRUB_CONFIG"

# Update GRUB
update-grub

echo "GRUB configuration updated. Please reboot your system for the changes to take effect."

