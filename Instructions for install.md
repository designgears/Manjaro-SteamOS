Download manjaro KDE from here 

# https://manjaro.org/download/

Once installed download the steam deckify software from the manjaro software store.

Reboot

Open startup and shutdown  at the bottom left of the window click behaviour. Then and make sure log in again after logging off is checked. go to the dropdown box and do thw same for ogui steam 

This will enable auto relogin 

Go to 

# /etc/skel  and drag the Return to gamemode folder to your desktop 

Click on the desktop shortcut you just created this will take you to game mode 

After going through the set up screens it will through an error keep mashing the A button till it logs you in (it make take a while)

Go back to Desktop mode and go to 

# /home/YOURUSERNAME/.steam/registry.vdf

Add the following line  "CompletedOOBE"  "1"  here-  This will fix the Error on steam start!

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

Just go to releases make sure its the latest one as there are a few  and download the tar.zst files and install with same pacman command as earlier! make sure you only have the mesa files then once installed delete them then download rogue and install with same command.

Once all is installed Rouge has a feature of changing power profiles by holding down the left command key next to D pad.

Goto # sudo nano /etc/ROGueENEMY/config.cfg and change enable bluetooth controller and enable touchbar to false and save. this will fix touchscreen and buttons 

This will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max

Well thats it gyro wont work just now on Manjaro or led control but enjoy your none immutable experiance! something diffrent from the rest.


