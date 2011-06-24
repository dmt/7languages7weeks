
dump := method(
	writeln( call sender)
	writeln( call target)
	writeln( call message slotNames)
	"what " println

)
target := Object clone
target bla := "foo"

Object target dump("xxx")

"Hello World" println
