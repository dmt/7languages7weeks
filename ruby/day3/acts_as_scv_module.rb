#!/usr/bin/ruby

module ActsAsCsv
	def self.included(base)
		base.extend ClassMethods
	end
	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end
	module InstanceMethods
		def read
			@csv_contents =[]
			filename = self.class.to_s.downcase+'.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')
			file.each do |row|
				hsh = {}
				vals = row.chomp.split(', ')
				vals.each_with_index do |val, index|
					hsh[@headers[index]]=val
				end
				@csv_contents << CsvRow.new(hsh)
			end
		end
		def each(&block)
			@csv_contents.each &block
		end
		attr_accessor :headers, :csv_contents
		def initialize
			read
		end
	end
end
class CsvRow
	def method_missing name, *args
		@rowhash[name.to_s]
	end
	def initialize(rowhash)
		@rowhash = rowhash
	end
end
class RubyCsv
	include ActsAsCsv
	acts_as_csv
end
csv = RubyCsv.new

csv.each {|row| puts row.one }

