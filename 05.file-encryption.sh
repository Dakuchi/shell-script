#!/bin/bash

# Define the file to encrypt
file="./text.txt"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File $file does not exist."
    exit 1
fi

# Prompt the user to enter a password for encryption
echo "Enter password for encryption:"
read -s password

# Encrypt the file with the AES-256-CBC algorithm using the entered password
openssl enc -aes-256-cbc -salt -in "$file" -out "$file.enc" -pass pass:"$password"

# Check if the encryption was successful
if [ $? -eq 0 ]; then
    echo "File encrypted successfully: $file.enc"
else
    echo "Encryption failed."
    exit 1
fi
