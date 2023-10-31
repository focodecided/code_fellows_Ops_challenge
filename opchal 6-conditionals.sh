#!/bin/bash

# Script Name:                  Bash Conditionals Demo
# Author:                       Hexx King
# Date of latest revision:      7/31/2023
# Purpose:                      A grocery list checker

# Define an array of files to check and create if they don't exist
items=("file1.txt" "file2.txt" "file3.txt")

# Initialize an array to store created files
created_files=()

# Loop through the array
for item in "${items[@]}"; do
    # Check if the item exists
    if [ -e "$item" ]; then
        echo "The '$item' already exists."
    else
        echo "The '$item' is not found."
        read -p "Do you want to create this file (type 'no' to finish, 'yes' to create this file, or 'other' to create another file): " create_or_not

        # Check if the user's input is "no"
        if [ "$create_or_not" = "no" ]; then
            break  # Exit the loop
        fi

        # Check if the user's input is "yes"
        if [ "$create_or_not" = "yes" ]; then
            touch "$item"  # Create a file
            echo "Created file: $item"
            created_files+=("$item")  # Add created file to the list
        fi

        # Check if the user's input is "other"
        if [ "$create_or_not" = "other" ]; then
            read -p "Name your file: " file_name
            touch "$file_name"  # Create a file
            echo "Created file: $file_name"
            created_files+=("$file_name")  # Add created file to the list
        fi
    fi


    # Ask the user if they want to see their completed file list
    read -p "Do you want to see your most current file list? (yes/no)" show_list
    if [ "$show_list" = "yes" ]; then
        echo "Your most current file list:"
        for file in "${created_files[@]}"; do
            echo "$file"
        done
    else
        echo "Ok, you can check your list later."
    fi
done

# End