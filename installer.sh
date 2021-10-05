#!/bin/bash

# Andrea Tosi   05/10/21    v0.1

# Installer for gccr
mkdir ~/bash_scripts
cp gccr/gccr.sh ~/bash_scripts

printf "\n\n# Alias for the shortcut gccr\nalias gccr='bash ~/bash_scripts/gccr.sh'" >> ~/.bashrc