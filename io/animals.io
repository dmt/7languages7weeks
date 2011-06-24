Object ancestors := method(
	prototype := self proto
	if(prototype != Object,
		writeln("slots of ", prototype, "\n------")
		prototype slotNames foreach(slotName, writeln(slotName))
		writeln
		prototype ancestors))
Animal := Object clone
Animal speak := method(
	"ambiguous animal noise" println)
Duck := Animal clone
Duck speak:= method(
	"got any grapes" println)
Duck walk := method(
	"waddle waddle" println)
disco := Duck clone
disco ancestors
