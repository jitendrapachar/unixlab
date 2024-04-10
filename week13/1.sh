#!/bin/bash
echo ""
echo "1. more: Command used to display the contents of a file page by page."
echo ""
more demo.txt
echo ""
echo "2. nl: Command used to add line numbers to a file."
echo ""
nl demo.txt
echo ""
echo "3. nice: Command used to run a process with modified scheduling priority."
echo ""
nice -n 0 date # Run 'command' with the default priority
nice -n -5 echo "hello" # Run 'command' with a higher priority
nice -n 10 ls # Run 'command' with a lower priority
echo ""
echo "4. passwd: Command used to change or set a users password."
echo ""
passwd
echo ""
echo "5. pr: Command used to format files for printing"
echo ""
pr -l 60 demo.txt
echo ""
echo "6. rlogin: Command used to login to a remote system."
echo ""
rlogin 172.50.10.227
echo ""
echo "7. rcp: Command used to copy files between machines."
echo ""
rcp asdfqwerty.txt 172.50.10.227:/home/student/422162
echo ""
echo "8. rsh: Command used to execute commands on a remote system."
echo ""
rsh 172.50.10.227 ls -l
echo "9. talk: Command used to communicate with another user logged into the same system."
echo ""
talk jitendra
echo ""echo "10. telnet: Command used to establish a connection to a remote system."
echo ""
telnet 172.50.10.227
echo "11. tput: Command used to query or set terminal-dependent capabilities."
echo ""
echo "number of columns are : "
tput cols
echo ""
echo "Number of lines are : "
tput lines
echo ""
echo "12. tty: Command used to print the file name of the terminal connected to standard input."
echo ""
tty
echo ""
echo "13. uname: Command used to print system information."
echo ""
uname -a
echo ""
echo "14. wc:Command used to count the number of lines, words, and characters in files."
echo ""
wc demo.txt
echo "15. who: Command used to display information about currently logged in users."
echo ""
who
echo ""
echo "16. write: Command used to send messages to another user."
echo ""
write jitendra
Echo ""
