#!/bin/bash
awk '

BEGIN {
count=0
sum=0
}

NR>1 && $3=="Laptop" {
sum=sum+$11
count++
rows[count]=$0
}

END {
print "Total Laptop Sell =" count 
print "Average Value -:" sum/count
for (i=1; i<=count; i++)
	print "Laptop Sell Record=" rows[i]

}
' sample.csv
