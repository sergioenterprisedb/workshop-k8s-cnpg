#!/bin/bash

. ./config.sh

for (( i=1; i<=$TOTAL_USERS; i++ ))
do

    USERNAME="user$i"
    # Delete user
    sudo userdel -r "$USERNAME"
    echo "Successfully deleted $USERNAME."
    rm -Rf /home/${USERNAME}
    echo "Successfully directory deleted /home/$USERNAME."

done


