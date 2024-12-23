#!/usr/bin/env bash
logfile="./text.txt" 
grep "ERROR" "$logfile" > error_log.txt 
echo "Error log created."