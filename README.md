🧰 Linux User Management (Bash Mini Project)

A menu-driven Bash automation project designed for Linux system administrators and DevOps learners.
This tool provides a simple interactive interface for managing users — adding, modifying, removing, and viewing user information — using shell scripting best practices.

🚀 Features

✅ Menu-based interface using select and case
✅ Add users with full name and optional secondary group
✅ Modify existing users or group memberships
✅ Remove users (with option to delete home directory)
✅ View all system users with UID and home directory
✅ Uses source to link multiple scripts cleanly
✅ Clear success/error messages for user-friendly output

🗂️ Project Structure
linux-user-management/
├── main_menu.sh        # Main script that displays menu and calls other scripts
├── add_user.sh         # Script to add new users
├── remove_user.sh      # Script to remove existing users
├── modify_user.sh      # Script to modify user or group details
└── view_users.sh       # Script to display user information

⚙️ Installation & Setup

Clone the repository

git clone https://github.com/Abdallahbadr23/linux-user-management.git
cd linux-user-management


Make all scripts executable

chmod +x *.sh


Run the main menu

./main_menu.sh

 Example Menu
----------------------------------------
     Linux User Management System
----------------------------------------
1) Add User
2) Remove User
3) Modify User
4) View Users
5) Exit
----------------------------------------
Enter your choice:

 Scripts Overview
🟢 add_user.sh

Prompts for username and full name.

Optionally adds user to a secondary group (creates it if not existing).

Validates input and confirms each action.

🟠 remove_user.sh

Asks whether to remove only the user or also delete their home directory (-r).

Confirms action before proceeding.

🔵 modify_user.sh

Allows adding user to a secondary group using gpasswd.

Easily extendable for other modifications.

🟣 view_users.sh

Displays system users with their username, UID, and home directory.

 Technologies Used

Bash Shell Scripting

Linux CLI Tools (useradd, userdel, usermod, gpasswd, awk, cut)

Menu-driven automation

Regular expressions for input validation

 Example Output
Enter username to add: ahmed
Enter full name for the user: Ahmed Hassan
✅ User 'ahmed' added successfully!
Do you want to add 'ahmed' to a secondary group? (y/n): y
Enter the secondary group name: devops
 Group 'devops' does not exist.
Do you want to create it? (y/n): y
✅ Group 'devops' created successfully!
✅ User 'ahmed' added to group 'devops'!

💡 Future Improvements

Add user password setup option

Log all actions to a file

Add colorized output and error handling

Integrate group management menu

👨‍💻 Author

Abdallah Badr
🖥️ Linux & DevOps Enthusiast

📧 abdallahbadr@example.com

🔗 https://github.com/Abdallahbadr23

