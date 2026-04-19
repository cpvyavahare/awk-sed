#!/bin/bash
awk '
BEGIN {

}

NR>1 {
count[$3]++
}

END {
for (i in count){
	print "Item -:" i, count[i]
}

}
' sample.csv
