#!/bin/bash
read -p "Enter group name to modify: " group
if getent group "$group" >/dev/null; then
    echo "1) Add member"
    echo "2) Remove member"
    read -p "Choose (1 or 2): " opt

    case $opt in
        1)
            read -p "Enter username to add: " user
            sudo gpasswd -a "$user" "$group" && echo "✅ Added '$user' to group '$group'."
            ;;
        2)
            read -p "Enter username to remove: " user
            sudo gpasswd -d "$user" "$group" && echo "✅ Removed '$user' from group '$group'."
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
else
    echo "❌ Group '$group' does not exist."
fi

