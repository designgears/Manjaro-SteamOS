Download manjaro KDE from here 

# https://manjaro.org/download/

Select the full iso image of KDE

Once installed do any updates and then download the steam deckify software from the manjaro software store.

Reboot

Open system settings then go to  startup and shutdown, at the bottom left of the window click behaviour. Then and make sure log in again after logging off is checked. 

This will enable auto relogin 

Go to 

# /etc/skel  and drag the Return to gamemode folder to your desktop 

Click on the desktop shortcut you just created this will take you to game mode 

After going through the set up screens it will through an error keep mashing the A button till it logs you in (it make take a while)

Go back to Desktop mode and go to 

# /home/YOURUSERNAME/.steam/registry.vdf

Add the following line  "CompletedOOBE"  "1"  This must be added at the end of the English entry, press Enter at the end of this line to create a space to enter it  

"language"		"english"
"CompletedOOBE"		"1"
"SourceModInstallPath"	

Save and exit 

You can run happily with this but if you want cutting edge with some issues do the following, and thanks to NeroReflex for all his work on this!

# https://github.com/rog-ally-gaming/linux-chimeraos/releases

Download 2 files from assets 

#  linux-neroreflex-6.8.0.rc4-2-x86_64.pkg.tar.zst
#  linux-neroreflex-headers-6.8.0.rc4-2-x86_64.pkg.tar.zst

Go to your Downloads folder and type 

# sudo pacman -U *.tar.zst  

You can download Rogue Enemy and mesa from the same git 

#  https://github.com/rog-ally-gaming

Just go to releases make sure its the latest one as there are a few. Download the tar.zst files and install with same pacman command as earlier, make sure you only have the mesa files then once installed delete them then download rogue and install with same command.

Next

#  sudo systemctl disable handycon
#  sudo systemctl enable --now rogue-enemy

Reboot and keep clicking the volume up button, on the menu press A button then volume up again, use the Dpad to select Neroflex kernel and press A again, this will now be your default kernel.

Once all is installed Rouge has a feature of changing power profiles by holding down the left command key next to D pad.

 # sudo nano /etc/ROGueENEMY/config.cfg and change enable bluetooth controller and enable touchbar to false and save. this will fix touchscreen and buttons 

This will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max

If you want Steam ui scaling in game mode then,
# sudo pacman -Sy
# sudo pacman -S yay
# sudo yay -S gamescope-plus
# sudo yay -S libs32-gamesscope-plus

Gyro and led control works, enjoy your none immutable experiance! something diffrent from the rest.



