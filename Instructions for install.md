Download manjaro KDE full image from here 

# https://manjaro.org/download/

Once installed Download the install scripts and install. Remember to make each script executable with chmod +x

Find Steam in your apps and log in.

Open system settings then go to  startup and shutdown, at the bottom center left of the window click behaviour. Then and make sure log in again after logging off is checked. 

After going through the set up screens it will throw an error.
Keep pressing the A button till it logs you in (it make take a while)

Go back to Desktop mode and go to 

# /home/YOURUSERNAME/.steam/registry.vdf

Add the following line  "CompletedOOBE"  "1" (with the quotes" This must be added at the end of the English entry,and before "SourceModInstallPath"
Press Enter at the end of English line to create a space then enter the CompletedOOBE command. 

"language"		"english"
"CompletedOOBE"		"1"
"SourceModInstallPath"	

Save and exit 


# Note on rogue enemy
 
 Change enable bluetooth controller and enable touchbar to false and save. this will fix touchscreen and buttons 

This will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max




