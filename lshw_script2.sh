#!/bin/bash

# Display the computer name
echo "Computer Name: $(hostname)"

# Display CPU information
echo -e "\nCPU Information:"
lshw -class processor | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:'

# Additional categories can be added similarly.

# For RAM information
echo -e "\nRAM Information:"
lshw -class memory | grep -E 'description:|physical id:|size:'

# For Display adapter information
echo -e "\nDisplay Adapter Information:"
lshw -class display | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'

# For Network adapter information
echo -e "\nNetwork Adapter Information:"
lshw -class network | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:'

