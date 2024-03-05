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

ROGUE-ENEMY

 The bottom left command button (next to Dpad) if held down for a second or so will cycle through 4 modes and change led colour as well , blue=silent green=performance yellow=special (best performance and frametimes) and red=max

 If you dont like rogue enemy you can install simple decky tpd and HHD if you install HHD. if you install HHD you have to remove rogue-enemy like this-

 # sudo pacman -R rogue-enemy 

 Here are links for Decky loader

 # curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh

 Simple Decky TDP

 # curl -L https://github.com/aarron-lee/SimpleDeckyTDP/raw/main/install.sh | sh

 HHD and Decky plugin

 # curl -L https://github.com/hhd-dev/hhd/raw/master/install.sh | sh

 
# curl -L https://github.com/hhd-dev/hhd-decky/raw/main/install.sh | sh
 
i am working on my own kernel with all rog ally fixes applied once its tested and i am happy with it i will upload that.!
 <img width="960" alt="Screenshot_20240302_165615" src="https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/49c9ae42-ddb9-42aa-aef8-08c63910ec77">





