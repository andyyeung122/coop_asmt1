
for f in *.txt; do
	declare -i x
	x=$(wc -l <"$f")

done

