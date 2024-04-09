#!/bin/bash
echo ""
echo ""
echo "----------Tar----------"
echo ""
echo "Creating an uncompressed tar Archive using option -cvf: "
tar cvf file.tar *.txt
echo ""
echo "Extracting files from Archive using option -xvf " 
tar xvf file.tar
echo ""
echo "gzip compression on the tar Archive, using option -cvzf "
tar cvzf file.tar.gz *.txt
echo ""
echo "Extracting a gzip tar Archive *.tar.gz using option -xvzf"
tar xvzf file.tar.gz
echo ""
echo "Creating compressed tar archive file in Linux using option -j"
tar cvfj file.tar.tbz file1.txt
echo ""
echo "----------Tar completed----------"
echo ""
