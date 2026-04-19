#!/bin/bash
awk '
BEGIN {
value=""
}

NR>1 {
count[$11]++
if (value=="" || value>$11){
	value=$11
	record=$0
}
}

END {
print "Minimum Item Price=" value
print "Record for item=" record
}
' sample.csv
