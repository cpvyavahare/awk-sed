#!/bin/bash
awk '
BEGIN {
count=0
}

NR>1 { 
	count=count+$11
}

END {
print "Total SUM=" count
}

' aa.csv
