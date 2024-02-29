Download manjaro KDE full image from here 

# https://manjaro.org/download/

Once installed Download the install scripts and install. Remember to make each script executable with 
# chmod +x
or right click the file and chose run as executable in permissions 
# run all scripts sudo ./(filename.sh)

Find Steam in your apps and log in.

Open system settings then go to  startup and shutdown, at the bottom center left of the window click behaviour. Then and make sure log in again after logging off is checked. 

Next go to this folder and open it.

# /home/YOURUSERNAME/.steam/registry.vdf

Add the following line  "CompletedOOBE"  "1" (with the quotes) This must be added at the end of the English entry,and before "SourceModInstallPath"
Press Enter at the end of English line to create a space then enter the CompletedOOBE command. 

"language"		"english"

"CompletedOOBE"		"1"

"SourceModInstallPath"	

Save and exit 

# Reboot


# Note on rogue enemy
Your touch screen wont work to begin with so....

# sudo nano /etc/ROGueENEMY/config.cfg
 
 Change enable bluetooth controller and enable touchbar to false and save (control + o , enter then control + x . this will fix touchscreen and buttons .

 The bottom left command button (next to Dpad) if held down for a second or so will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max




