#!/bin/bash
# Script to add a new user with full name and optional secondary group

read -p "Enter username to add: " user

if id "$user" &>/dev/null; then
    echo "❌ User '$user' already exists."
    exit 1
fi

read -p "Enter full name for the user: " fullname
sudo useradd -c "$fullname" "$user" && echo "✅ User '$user' added successfully!" || { echo "❌ Failed to add user."; exit 1; }

read -p "Do you want to set a password for '$user'? (y/n): " setpass
if [[ "$setpass" =~ ^[Yy]([Ee][Ss])?$ ]]; then
    sudo passwd "$user"
fi

read -p "Do you want to add '$user' to a secondary group? (y/n): " addgroup
if [[ "$addgroup" =~ ^[Yy]([Ee][Ss])?$ ]]; then
    read -p "Enter secondary group name: " group
    if getent group "$group" >/dev/null; then
        sudo gpasswd -a "$user" "$group" && echo "✅ User '$user' added to group '$group'."
    else
        echo "❌ Group '$group' doesn't exist."
        read -p "Do you want to create it? (y/n): " creategroup
        if [[ "$creategroup" =~ ^[Yy]([Ee][Ss])?$ ]]; then
            sudo groupadd "$group" && echo "✅ Group '$group' created."
            sudo gpasswd -a "$user" "$group" && echo "✅ User '$user' added to group '$group'."
        else
            echo "Skipping group creation."
        fi
    fi
else
    echo "No secondary group added."
fi

