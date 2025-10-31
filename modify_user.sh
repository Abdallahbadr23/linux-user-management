#!/bin/bash
# Modify user options

echo "1) Change user shell"
echo "2) Add user to secondary group"
read -p "Choose an option (1 or 2): " opt

case $opt in
    1)
        read -p "Enter username: " user
        if id "$user" &>/dev/null; then
            read -p "Enter new shell (e.g., /bin/bash): " shell
            sudo usermod -s "$shell" "$user" && echo "✅ User '$user' shell changed successfully."
        else
            echo "❌ User '$user' not found."
        fi
        ;;
    2)
        read -p "Enter username: " user
        if id "$user" &>/dev/null; then
            read -p "Enter secondary group: " group
            if getent group "$group" >/dev/null; then
                sudo gpasswd -a "$user" "$group" && echo "✅ User '$user' added to group '$group'."
            else
                echo "❌ Group '$group' does not exist."
            fi
        else
            echo "❌ User '$user' not found."
        fi
        ;;
    *)
        echo "Invalid option."
        ;;
esac

