#!/bin/bash
read -p "Enter username to enable: " user

if id "$user" &>/dev/null; then
    sudo usermod -U "$user" && echo "✅ User '$user' enabled (unlocked)."
else
    echo "❌ User '$user' not found."
fi

