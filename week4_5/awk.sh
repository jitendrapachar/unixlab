#!/bin/bash

i="file4.txt"
echo ""
echo ""
echo "----------Pattern matching using awk----------"
echo ""
echo "Printing the PATTERN: "
awk '{print}' "$i"
echo ""
echo "Printing the 1st column and 4th column: "
awk '{print $1, $4}' "$i"
echo ""
echo "Printing the SUM of 3rd column :"
awk '{sum += $3} END {print sum}' "$i"
echo ""
echo "Printing the AVERAGE of 3rd column :"
#NR=Number of Records
awk '{sum += $3} END {print sum/NR}' "$i"
echo ""
echo "Printing the substring of column 3 starting from position 2 to 3 : "
awk '{print substr($3,2,3)}' "$i"
echo ""
echo "printing the Last column : "
# NF is used for last column
awk '{print $NF}' "$i"
echo ""
echo "Applying the If-Else condition :"
awk '{
	if  ($3>20000){
		print "High salary"
	}
	else{
		print "Low salary"
	}
}' "$i" 
echo ""
echo "Use of FUNCTION :"
awk 'function square(x) {return x*x} {print square($1)}' "$i"
echo ""
echo "----------awk completed----------"
echo ""
echo ""
