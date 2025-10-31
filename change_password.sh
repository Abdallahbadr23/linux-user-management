#!/bin/bash
read -p "Enter username to change password: " user

if id "$user" &>/dev/null; then
    sudo passwd "$user"
    echo "✅ Password changed successfully."
else
    echo "❌ User '$user' not found."
fi

