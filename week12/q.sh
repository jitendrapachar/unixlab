#!/bin/bash
echo ""
echo "bc : to perform mathematical calculations"
echo "5+10" | bc
echo "sqrt(16)" | bc
echo ""
echo "comm : Compare two sorted files line by line"
comm <(sort file1.txt) <(sort file2.txt)
echo ""
echo "chown - Change file owner and group"
sudo chown yot:developers file5.txt
echo ""
echo "chgrp - Change group ownership"
sudo chgrp developers file5.txt
echo ""
echo "cron - Scheduling tasks"
crontab -e
echo ""
echo "dd - Copy and convert files"
dd if=file1.txt of=outputfile.txt
echo ""
echo "diff - Compare files line by line"
diff file1.txt file2.txt
echo ""
echo "finger - Display information about user"
finger kstra
echo ""
echo "find - Search files and directories"
find /home/kstra/Desktop -name "*.txt"
echo ""
echo "ftp - File Transfer Protocol"
ftp ftp://192.168.65.90:2221
echo ""
echo "ln - Create links between files"
ln -s /home/kstra/Desktop/unix2/week3/abc.txt /home/kstra/Desktop/week12
echo "link created"
echo ""
echo "lp - Print files"
lp file1.txt
echo "lp executed"
echo ""
echo "lpstat - Display printer status information"
lpstat -p
echo "lpstat executed"
echo ""
echo "mesg - Control write access to your terminal"
mesg y
echo "mesg executed"
