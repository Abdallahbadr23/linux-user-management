#!/bin/bash
# Main menu script for User & Group Management

while true; do
    clear
    echo "==================================="
    echo "         USER MANAGEMENT MENU"
    echo "==================================="
    echo "1) Add User"
    echo "2) Modify User"
    echo "3) Delete User"
    echo "4) List Users"
    echo "5) Add Group"
    echo "6) Modify Group"
    echo "7) Delete Group"
    echo "8) List Groups"
    echo "9) Disable User"
    echo "10) Enable User"
    echo "11) Change Password"
    echo "12) About"
    echo "13) Exit"
    echo "-----------------------------------"
    read -p "Enter your choice [1-13]: " choice

    case $choice in
        1)  source add_user.sh ;;
        2)  source modify_user.sh ;;
        3)  source delete_user.sh ;;
        4)  source list_users.sh ;;
        5)  source add_group.sh ;;
        6)  source modify_group.sh ;;
        7)  source delete_group.sh ;;
        8)  source list_groups.sh ;;
        9)  source disable_user.sh ;;
        10) source enable_user.sh ;;
        11) source change_password.sh ;;
        12) source about.sh ;;
        13) echo "👋 Exiting..."; exit 0 ;;
        *) echo "❌ Invalid choice. Try again." ;;
    esac

    echo
    read -p "Press Enter to return to the main menu..."
done

