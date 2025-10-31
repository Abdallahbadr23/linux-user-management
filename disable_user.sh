#!/bin/bash
read -p "Enter username to disable: " user

if id "$user" &>/dev/null; then
    sudo usermod -L "$user" && echo "✅ User '$user' disabled (locked)."
else
    echo "❌ User '$user' not found."
fi

