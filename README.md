# Odroid_UbuntuMate_setup
Instruction to setup Odroid Xu4 with Ubuntu Mate 16.04, ROS bare bones and other dependencies.

## Installing OS on sd card
### Download image
### use flasher

## Installing ROS bare bones, mavros and other dependencies [Linux]
* Open a terminal by using the shortcut ``` ctrl+alt+t ``` and navigate to the directory where the file ``` install_odroid_16.04_ros.sh ``` is located.
* Make the script executable 
```
sudo chmod +x install_odroid_16.04_ros.sh
```
* run the script using the following command
```
./install_odroid_16.04_ros.sh
```

### Enable auto login
Enter superuser by typing the following in terminal
```
su
```

After you have entered you password, type:
```
echo "autologin-user=odroid" >> /usr/share/lightdm/lightdm.conf.d/60-lightdm-gtk-greeter.conf
```

press ``` ctrl + d ``` to exit su
