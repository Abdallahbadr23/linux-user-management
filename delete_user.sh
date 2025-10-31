#!/bin/bash
# Delete user with or without home directory

read -p "Enter username to delete: " user

if id "$user" &>/dev/null; then
    echo "User '$user' found ✅"
    echo "1) Delete user only (keep home directory)"
    echo "2) Delete user and home directory"
    read -p "Choose (1 or 2): " opt

    case $opt in
        1)
            sudo userdel "$user" && echo "✅ User '$user' deleted (home kept)."
            ;;
        2)
            sudo userdel -r "$user" && echo "✅ User '$user' and home directory deleted."
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
else
    echo "❌ User '$user' does not exist."
fi

