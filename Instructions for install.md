Download manjaro KDE full image from here 

# https://manjaro.org/download/

Once installed Download install_first script goto your Downloads and open terninal and type 
# chmod +x ./install_first.sh
or right click the file and chose run as executable in permissions 
Then in treminal type 

# sudo ./sudo ./install_first.sh 

When the time comes do the same for Install_2nd file.

Find Steam in your apps list and log in.

Open system settings then go to  startup and shutdown, at the bottom center left of the window click behaviour. Then and make sure log in again after logging off is checked. 

Next go to this folder and open it. (You will need to enable view hidden files in dolphin)

# /home/YOURUSERNAME/.steam/registry.vdf

Add the following line  "CompletedOOBE"  "1" (with the quotes) This must be added at the end of the English entry,and before "SourceModInstallPath"
Press Enter at the end of English line to create a space then enter the CompletedOOBE command. 

"language"		"english"

"CompletedOOBE"		"1"

"SourceModInstallPath"	

# Example .VDF file is included if you get lost.

Save and exit 

# Reboot

Now do the same as you did with the First file Install for Install_2 make it executable and run it.

ROGUE-ENEMY

 The bottom left command button (next to Dpad) if held down for a second or so will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max




