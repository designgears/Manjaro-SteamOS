# NOTE DUE TO RECENT CHANGES IN MANJARO 
after install go to software install app and remove steam deckify then reinstall it and select steam os with HHD session. this fixes the new updates!

This is a unique take to Steam OS on linux, it will install two kernel for you to use , one is the Zen linux kernel that is optimised for speed and gaming.
The other is from NeroReflex that has added Valve and adm patches. you can swap between them to see which one works best for your use case.

To swap between kernels hit the volume UP button at boot a few times , you will be presented with boot menu press A button then quickly press the the volume UP again , then selct the kernel you want to use with D Pad and press A 


Download manjaro KDE full image from here 

# https://manjaro.org/download/

Once installed open terminal and install and log into your steam account.

# sudo pacman -Sy 
# sudo pacman -S steam 

Download install_first.sh script goto your Downloads and open terninal and type 
# chmod +x ./install_first.sh
or right click the file and chose run as executable in permissions 
Then in treminal type 

#  ./install_first.sh 

Then run the script again with sudo.

# sudo ./install_first.sh

Open system settings then go to  startup and shutdown, at the bottom center left of the window click behaviour. Then and make sure log in again after logging off is checked. 

# Reboot

Run the second script remember to chmod it to make it executable then
#. sudo ./Install_2nd.sh



 <img width="960" alt="Screenshot_20240302_165615" src="https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/49c9ae42-ddb9-42aa-aef8-08c63910ec77">





