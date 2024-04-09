#!/bin/bash

echo ""
echo ""
echo "----------Cpio----------"
echo ""
echo "Creating a cpio file : "
ls | cpio -ov > file11.cpio
echo ""
echo "Extracting a cpio file: "
ls | cpio -iv < file11.cpio
echo ""
echo "Creating tar file using cpio: "
ls | cpio -ov -H tar > file11.tar
echo ""
echo "Extracting tar file using cpio: "
cpio -iv -F  file11.tar
echo ""
echo "To create a *.tar archive with selected files: "
find . -name "*.txt" | tar -cvf file11.tar -T -
echo ""
echo "To view only *.tar archive file: "
cpio -it < file11.tar
echo ""
echo "----------cpio completed----------"
echo ""

