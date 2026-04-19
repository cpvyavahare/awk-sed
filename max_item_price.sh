#!/bin/bash
awk '
BEGIN {
value=0
}

NR>1 {

count[$11]++
if (value < $11){
	value=$11
	record=$0
}
	
}

END {
print "Max Value-:" value
print "Record -:" record
}

' sample.csv
