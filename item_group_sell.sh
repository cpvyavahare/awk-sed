#!/bin/bash
awk '
BEGIN {
#count=0
}

NR>1 {

count[$3]++


}

END {
for (p in count) {
		print p, count[p]
	}
}

' sample.csv
