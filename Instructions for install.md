Download manjaro KDE full image from here 

# https://manjaro.org/download/

Once installed search for and  download the steam deckify software from the manjaro software store, and install it, also steam.

# sudo pacman -S steam 

Open system settings then go to  startup and shutdown, at the bottom left of the window click behaviour. Then and make sure log in again after logging off is checked. 

Go to 

# /etc/skel  and drag the Return to gamemode folder to your desktop 

reboot

After going through the set up screens it will throw an error keep mashing the A button till it logs you in (it make take a while)

Go back to Desktop mode and go to 

# /home/YOURUSERNAME/.steam/registry.vdf

Add the following line  "CompletedOOBE"  "1"  This must be added at the end of the English entry, press Enter at the end of this line to create a space to enter it  

"language"		"english"
"CompletedOOBE"		"1"
"SourceModInstallPath"	

Save and exit 

You can run happily with this but if you want cutting edge with some issues do the following, and thanks to NeroReflex for all his work on this!

# https://github.com/rog-ally-gaming/linux-chimeraos/releases

Download 2 files from assets choose latest package release. Below is 2 example files for the ones you need.

#  linux-neroreflex-6.8.0.rc4-2-x86_64.pkg.tar.zst
#  linux-neroreflex-headers-6.8.0.rc4-2-x86_64.pkg.tar.zst

Go to your Downloads folder and type 

# sudo pacman -U *.tar.zst (this command will be used to install rogue enemy and mesa as well) 

You can download Rogue Enemy and mesa from the same git 

#  https://github.com/rog-ally-gaming

Just go to releases make sure its the latest one as there are a few. Download the tar.zst files and make sure you only have the mesa files then once installed delete them then download rogue and install with same command.

Next

#  sudo systemctl disable handycon
#  sudo systemctl enable --now rogue-enemy

Reboot and keep clicking the volume up button, on the menu press A button then volume up again, use the Dpad to select Neroflex kernel and press A again, this will now be your default kernel.

Once all is installed Rouge has a feature of changing power profiles by holding down the left command key next to D pad.

 # sudo nano /etc/ROGueENEMY/config.cfg 
 
 Change enable bluetooth controller and enable touchbar to false and save. this will fix touchscreen and buttons 

This will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max

If you want Steam ui scaling in game mode then,
# sudo pacman -Sy
# sudo pacman -S yay
# sudo yay -S gamescope-plus
# sudo yay -S multilib/lib32-gamescope-plus

Gyro and led control works, enjoy your none immutable experiance! something diffrent from the rest.

Fan control 
#  sudo pacman -S asusctl
#  sudo pacman -S rog-control-center
#  sudo pacman -S meson
#  sudo pacman -S base-devel
#  sudo pacman -S ninja
#  sudo pacman -S podman

To enable asusctl to work properly you have to install Power-profiles-Deamon.

# sudo pacman -S libgudev
#  git clone https://gitlab.freedesktop.org/upower/power-profiles-daemon.git

Open a terminal in the downloaded folder in your home directory then paste this.

#  meson setup _build -Dprefix=/usr ninja -C _build install


If you want to compile the latest Proton from Valve (9.1)

#  git clone --recurse-submodules https://github.com/ValveSoftware/Proton.git

After its downloaded open the folder in your home directory, open ternimal within the folder then

# make install

this will compile it and install it be aware it will take 20-30 mins to compile and install

Deckloader install 

#  curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh 

