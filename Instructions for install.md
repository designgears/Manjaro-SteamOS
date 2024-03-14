# NOTE DUE TO RECENT CHANGES IN MANJARO 
after install go to software install app and remove steam deckify then reinstall it and select steam os with HHD session. this fixes the new updates!

This is a unique take to Steam OS on linux.



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

Your fan curves can be adjusted in PowerControl steam
OS

# Optinal 3d sound improvment in steam for the ROG Ally

Downlaod easy effects from manjaro software store.

Download the pipewire.conf file and copy it to 
# /etc/pipewire.

Copy the sound.service file too

# /etc/systemd/system

Then type sudo systemctl enable --now sound.service.

Goto sound settings on desktop you will then see new sound sinks move the sliders on all off them to 100%.

Reboot

Now in SteamOS open audio and you will see 4 new sound profiles, the gain has all been boosted for Ally now sounds louder, you might not want to max the sound slider as you might get distortion at MAX>

Enjoy!!!

After


 <img width="960" alt="Screenshot_20240302_165615" src="https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/49c9ae42-ddb9-42aa-aef8-08c63910ec77">





