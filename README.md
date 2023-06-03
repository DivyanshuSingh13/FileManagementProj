# File Management Project

The project is a File Management System implemented in Bash. The script contains the program to perform various operation on a file on a Linux operating system. It provides a menu-driven interface to perform various operations on files and directories.

Here's a brief explanation of the script:

The script starts with a shebang (#!/usr/bin/env bash) to specify the interpreter.

It displays a menu of options using echo statements. The user can enter a number corresponding to the desired operation.

The script uses a while loop to continuously prompt the user for input until they choose to exit.

Inside the loop, it reads the user's choice using the read command and uses if-elif-else statements to execute the appropriate block of code based on the selected option.

The available options include:

Option 1: Show all files and directories using the ls command.
Option 2: Create a new file by prompting the user for the file type and name, and using the touch command to create the file.
Option 3: Delete an existing file by specifying the filename and using the rm command.
Option 4: Rename a file by providing the old and new filenames and using the mv command.
Option 5: Edit the content of a file using the nano text editor.
Option 6: Search for a file by specifying the filename.
Option 7: Display detailed information about a file using the stat command.
Option 8: View the contents of a file using the cat command.
Option 9: Sort the content of a file using the sort command.
Option 10: List all directories using the ls command with the -d option.
Option 11: List files with specific extensions by prompting the user for the extension and using the ls command with wildcard pattern matching.
The script includes error handling for invalid input and checks for the existence of files before performing operations.

The loop continues until the user enters option 0, which exits the script.
