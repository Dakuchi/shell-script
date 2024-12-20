#!/bin/bash 
length=3
password=$(openssl rand -base64 $length) 
echo "Generated password: $password" 