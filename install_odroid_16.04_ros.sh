#!/bin/bash
echo "Installation started"
echo ""

#Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#Set up your keys
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# make sure your Debian package index is up-to-date
sudo apt-get update
#Y | sudo apt-get install ros-kinetic-ros-base

# Install Bare Bones of ROS
sudo apt-get install ros-kinetic-ros-base
echo ""
echo "Finished installing ROS base"

# Install Openssh server
echo ""
sudo apt-get install openssh-server
echo ""
echo "Finished installing openssh"

# Install Mavros and dependencies
echo ""
sudo apt-get install ros-kinetic-mavros ros-kinetic-mavros-extras ros-kinetic-mavros-msg
echo ""
echo "Finished installing mavros"

# Install package for tab completion in terminal
sudo apt install bash-completion

# Setting up "bash-completion"
echo "# enable bash completion in interactive shells" >> ~/.bashrc
echo "if ! shopt -oq posix; then" >> ~/.bashrc
echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> ~/.bashrc
echo "    . /usr/share/bash-completion/bash_completion" >> ~/.bashrc
echo "  elif [ -f /etc/bash_completion ]; then" >> ~/.bashrc
echo "    . /etc/bash_completion" >> ~/.bashrc
echo "  fi" >> ~/.bashrc
echo "fi" >> ~/.bashrc

source ~/.bashrc

# Install git
sudo apt install git

# Install GeographicLib
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo chmod +x install_geographiclib_datasets.sh
./install_geographiclib_datasets.sh

# End of script
echo ""
echo "Done installation"
