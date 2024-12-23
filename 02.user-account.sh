#!/usr/bin/env bash

username="jayce" 
if id "$username" &>/dev/null; then 
    echo "User $username already exists." 
else 
    useradd -m "$username" 
    echo "User $username created." 
fi