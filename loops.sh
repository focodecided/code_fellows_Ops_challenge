#!/bin/bash

# Script Name:                  Loops 
# Author:                       Festus Oguhebe Jr. 
# Date of latest revision:      10/28/2023
# Purpose:                      To create and maintain string of data in memory using array 

#!/bin/bash

while true; do
    clear  # Clear the terminal to make it easier to read

    # Step 1: Display running processes
    echo ps aux "Running Processes:"

    # Step 2: Ask the user for a PID
    read -p "Enter the PID of the process to kill (or Ctrl + C to exit): " pid

    # Check if the user wants to exit
    if [[ -z "$pid" ]]; then
        echo "Exiting the script."
        exit 0
    fi

    # Step 3: Kill the process with the entered PID
    kill -9 "$pid"  # Use -9 for forceful termination

    # Pause to view the results
    read -p "Press Enter to continue..."


# Declaration of variables
var=0

# Declaration of function


   
# Main

while [ $var -lt 10 ]

do
    echo $var
    var=$((var+1))
done


# End