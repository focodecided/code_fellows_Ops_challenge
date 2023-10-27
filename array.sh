#!/bin/bash

# Script Name:                  Functions
# Author:                       Festus Oguhebe Jr. 
# Date of latest revision:      10/26/2023
# Purpose:                      To create and maintain string of data in memory using array 

# Declaration of variables
folders=("dir1" "dir2" "dir3" "dir4")

# Declaration of function
createfile() {
    mkdir ${folders[@]}
    touch ${folders[0]}/$1.txt
    touch ${folders[1]}/$2.txt
    touch ${folders[2]}/$3.txt
    touch ${folders[3]}/$4.txt
    echo "${folders[0]}/$1.txt"
    echo "${folders[0]}/$1.txt"
    echo "${folders[0]}/$1.txt"
    echo "${folders[0]}/$1.txt" 
}
   
# Main

createfile Festus
createfile Daniel
createfile Peter
createfile Marcus



# End