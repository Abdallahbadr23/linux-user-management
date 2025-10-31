#!/bin/bash
read -p "Enter group name to delete: " group

if getent group "$group" >/dev/null; then
    sudo groupdel "$group" && echo "✅ Group '$group' deleted successfully."
else
    echo "❌ Group '$group' does not exist."
fi

