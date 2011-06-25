Matrix := List clone

Matrix dim := method(x, y, 
	self columns := x
	self rows := y
	for(i, 1, rows, 
		row := Range clone setRange(1, columns) map(x, x)
		self append(row)
	)
)
Matrix set := method(x, y, value,
	self at(y) atPut(x, value)
)
Matrix get := method(x, y, 
	self at(y) at(x)
)
Matrix transpose := method(
	matrix := Matrix clone
	matrix dim(self rows, self columns)
	self foreach(rindex, row, 
		row foreach(column, value, 
			matrix set(rindex, column, value)
		)
	)
	return matrix
)

x3y5 := Matrix clone dim(3, 5)
writeln("initial matrix ", x3y5)

x3y5 set(2,1,23)
writeln("value at 2, 1: ", x3y5 get(2,1))

writeln("edited matrix ", x3y5)

x5y3 := x3y5 transpose
writeln("transposed matrix ", x5y3)

writeln("transposed value at 1, 2: ", x5y3 get(1,2))
