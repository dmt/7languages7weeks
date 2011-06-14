#!/usr/bin/ruby

ARGV.size == 2 or puts "usage: $0 <regexp> <filename>" && exit

pos = 0
File.foreach(ARGV[1]) do |line|
	pos += 1
	puts " #{pos}: #{line}" if line.match(ARGV[0])
end
