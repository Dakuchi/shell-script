#!/bin/bash

# Directory to clean up
directory="/home/jayce/Backup"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory '$directory' does not exist."
    exit 1
fi

# Find and process files older than 7 days
found=false
find "$directory" -type f -mtime 0 | while read file; do
    # Check if files are being found
    echo "Found file: $file"

    # Ask for confirmation for the first file
    if ! $found; then
        read -p "Do you want to delete this file? (y/n): " confirm
        confirm=$(echo "$confirm" | tr -d '[:space:]')  # Remove any extra whitespace
        
        # If the user confirms, delete the file and set the flag to stop further confirmation
        if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
            rm "$file"
            echo "Deleted: $file"
        else
            echo "Skipped: $file"
        fi
        found=true  # After confirming one file, set found to true to skip confirmation for others
        break  # Stop after processing the first file
    fi
done

# If no files were found
if [ "$found" = false ]; then
    echo "No old files were found to delete."
else
    echo "Cleanup complete."
fi