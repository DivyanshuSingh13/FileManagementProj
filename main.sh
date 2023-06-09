#!/usr/bin/env bash
echo "Enter 1 to Show all files"
echo "Enter 2 to Create a new file"
echo "Enter 3 to Delete an existing file"
echo "Enter 4 to Rename file"
echo "Enter 5 to Edit file content"
echo "Enter 6 to Search a file"
echo "Enter 7 to Search Details of a file"
echo "Enter 8 to View Contents of a file"
echo "Enter 9 to Sort File content"
echo "Enter 10 to List all directories"
echo "Enter 11 to List files with particular extensions"
i="0"
while [ $i -lt 100 ]
do
    read opt1
    if [ $opt1 == 1 ]
    then
        echo "List all files and Directories here.."
        echo "Showing all files and directories...." 
        sleep 1
        echo "Loading.."
        sleep 1
        echo "-------------------------------OutPut------------------------------------"
        ls
        echo " "
    elif [ $opt1 == 2 ]
    then
        echo "Create New Files here.."
        echo "Which type of file you want to create !"
        echo "1- .c"
        echo "2- .sh"
        echo "3- .txt"
        echo "Enter your choice from 1-3"
        read filechoice
        if [ $filechoice == 1 ]
        then
            echo "Enter File Name without .c Extension"
            read filename
            touch $filename.c
            echo "-------------------------------OutPut------------------------------------"
            echo "File Created Successfully"
            echo " "
        elif [ $filechoice == 2 ]
        then
            echo "Enter File Name without .sh Extension"
            read filename2
            touch $filename2.sh
            echo "-------------------------------OutPut------------------------------------"
            echo "File Created Successfully"
            echo " "
        elif [ $filechoice == 3 ]
        then
            echo "Enter File Name without .txt Extension"
            read filename3
            touch $filename3.txt
            echo "-------------------------------OutPut------------------------------------"
            echo "File Created Successfully"
            echo " "
        else
            echo "Inavlid Input..Try Again."
            echo " "
        fi
    elif [ $opt1 == 3 ]
    then
        echo "Delete existing files here.. "
        echo "Enter name of File you want to Delete!"
        echo "Note: Please Enter full Name with Extension."
        read delfile
        echo "-------------------------------OutPut------------------------------------"
        if [ -f "$delfile" ];
        then
            rm $delfile
            echo "Successfully Deleted."
            echo " "
        else
            echo "File Does not Exist..Try again"
            echo " "
        fi
        elif [ $opt1 == 4 ]
        then
            echo "-------------------------------OutPut------------------------------------"
            echo "Rename files here.."
            echo "Enter Old Name of File with Extension.."
            read old
            echo "Checking for file..."
            sleep 1
            if [ -f "$old" ];
            then
                echo "Ok File Exist."
                echo "Now Enter New Name for file with Extension"
                read new
                mv $old $new
                echo "Successfully Rename."
                echo "Now Your File Exist with $new Name"
            else
                echo "$old does not exist..Try again with correct filename."
            fi
            echo " "
        elif [ $opt1 == 5 ]
        then
            echo "Edit file content here.."
            echo "Enter File Name with Extension : "
            read edit
            echo "-------------------------------OutPut-----------------------------------"
            echo "Checking for file.."
            sleep 1
            if [ -f "$edit" ];
            then
                echo "Opening file.."
                sleep 1
                nano $edit
                echo " "
            else
                echo "$edit File does not exist..Try again."
            fi

        elif [ $opt1 == 6 ]
        then
            echo "Search files here.."
            echo "Enter File Name with Extension to search"
            read f
            echo "-------------------------------OutPut------------------------------------"
            if [ -f "$f" ];
            then
                echo "Searching for $f"
                echo " "
            else
                echo "File Does not Exist..Try again."
                echo " "
            fi
        elif [ $opt1 == 7 ]
        then
            echo "Detail of file here.."
            echo "Enter File Name with Extension to see Detail :"
            read detail
            echo "-------------------------------OutPut------------------------------------"
            echo "Checking for file.."
            sleep 1
            if [ -f "$detail" ];
            then
                echo "Loading Properties.."
                stat $detail
            else
                echo "$detail File does not exist..Try again"
            fi
            echo " "
        elif [ $opt1 == 8 ]
        then
            echo "View content of file here.."
            echo "Enter File Name : "
            read readfile
            echo "-------------------------------OutPut------------------------------------"
            if [ -f "$readfile" ];
            then
                echo "Showing file content.."
                sleep 1
                cat $readfile
            else
                echo "$readfile does not exist"
            fi
            echo " "
        elif [ $opt1 == 9 ]
        then
            echo "Sort files content here.."
            echo "Enter File Name with Extension to sort :"
            read sortfile
            echo "-------------------------------OutPut------------------------------------"
            if [ -f "$sortfile" ];
            then
                echo "Sorting File Content.."
                sleep 1
                sort $sortfile
            else
                echo "$sortfile File does not exist..Try again."
            fi
            echo " "
        elif [ $opt1 == 10 ]
        then
            echo "-------------------------------OutPut------------------------------------"
            echo "List of all Directories here.."
            echo "showing all Directories..."
            echo "Loading.."
            sleep 1
            ls -d */
            echo " "
        elif [ $opt1 == 11 ]
        then
            echo "List of Files with Particular extensions here.."
            echo "Which type of file list you want to see?"
            echo "1- .c"
            echo "2- .sh"
            echo "3- .txt"
            echo "Enter your choice from 1-3"
            read extopt
            echo "-------------------------------OutPut------------------------------------"
            if [ $extopt == 1 ]
            then
                echo "List of .c Files shown below."
                echo "Loading.."
                sleep 1
                ls *.c
            elif [ $extopt == 2 ]
            then
                echo "List of .sh Files shown below."
                echo "Loading.."
                sleep 1
                ls *.sh
            elif [ $extopt == 3 ]
            then
                echo "List of .txt Files shown below."
                echo "Loading.."
                sleep 1
                ls *.txt
            else
                echo "Invalid Input..Try again.."
            fi
            echo " "
        elif [ $opt1 == 0 ]
        then
            echo "Good Bye.."
            echo "Successfully Exit"
            exit 0
    else
        echo "Invalid Input..Try again...."
    fi  
    i=$[$i+1]
done
