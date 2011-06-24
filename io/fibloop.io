fib := method( number, 
	result := 1
	prev := 1
	for(i, 1, number, 
		if (i>2, 
			tmp := result
			result = result+prev
			prev := tmp
		))
	return result
)
for (j, 1, 10, writeln("Fib ", j, ": ", fib(j)))
