#!/bin/bash
read -p "Enter group name to add: " group

if getent group "$group" >/dev/null; then
    echo "❌ Group '$group' already exists."
else
    sudo groupadd "$group" && echo "✅ Group '$group' added successfully."
fi

