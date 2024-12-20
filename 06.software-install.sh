#!/bin/bash 
packages=("curl" "vim" "git") 
for package in "${packages[@]}"; do 
    sudo apt-get install "$package" -y 
done 
echo "Packages installed successfully."
