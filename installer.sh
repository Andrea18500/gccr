#!/bin/bash

# Andrea Tosi   05/10/21    v0.2

# Installer for gccr
LOCAL_DIR="~/bash_scripts"
LOCAL_FILE="~/.bashrc"
TEMP_DIR=$(pwd)
TEMP_GCCR="gccr/gccr.sh"
TEMP_BASHRC_COMMAND="\n\n# Alias for the shortcut gccr\nalias gccr='bash ~/bash_scripts/gccr.sh'"
flag=true

if [ -d "$LOCAL_DIR" ]; then
    echo "Installation files exists. Checking for possible errors..."
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "''${LOCAL_DIR}'' not found. Creating directory..."
  mkdir "$LOCAL_DIR"
fi

echo "Installing config files in ''${LOCAL_DIR}''..."

if [ -f "$LOCAL_FILE" ]; then
    if ! grep -q $TEMP_BASHRC_COMMAND "$LOCAL_FILE"; then
        echo "Adding gccr to the list of commands..."
        printf "$TEMP_BASHRC_COMMAND" >> "$LOCAL_FILE"
    else
        echo "UPDATING PREVIOUS INSTALLATION..."
    fi
    
    cp "$TEMP_GCCR $LOCAL_DIR"
    echo "gccr installed successfully"
        
else 
    echo "Error: ''$LOCAL_FILE'' does not exist. Cannot continue."
    exit 1
fi

echo "Do you wanna delete the installation folder : ''$TEMP_DIR''? [Y/n]"
read input

while $flag;
do
	if [[ $input == "Y" || $input == "y" ]]; then
        rm -r -f -- "$TEMP_DIR"
        flag=true
        echo "Installation folder removed"
    elif [[ $input == "N" || $input == "n" ]]; then
        flag=true
        echo "Installation folder not removed"
    else
        flag=false
        echo "Option not valid.\nDo you wanna delete the installation folder: ''$TEMP_DIR''? [Y/n]"
    fi
done
echo "Installation completed."
