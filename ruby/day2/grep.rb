#!/usr/bin/ruby

ARGV.size == 2 or puts "usage: $0 <regexp> <filename>" && exit

File.readlines(ARGV[1]).each_with_index do |line, pos|
	puts "#{pos+1}: #{line}" if line.match(ARGV[0])
end
