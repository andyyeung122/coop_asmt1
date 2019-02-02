
for f in *.txt; do
	declare -i x
	x=$(wc -l <"$f")
	if [ $x -eq 0 ]
	then
		rm -- "$f"
        elif [ $x -lt 10 ] && [ $x -gt 0 ]
        then
                mv -- "$f" "short_$f"
        elif [ $x -lt 21 ] && [ $x -gt 9 ]
        then
                mv -- "$f" "medium_$f"
        elif [ $x -gt 20 ]
        then
                mv -- "$f" "long_$f"
        fi
done

