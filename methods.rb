#!/usr/bin/ruby
names = ["Jane", "Bob", "Ali"]
puts array_to_hash(names)
def array_to_hash(arr)
	#arr is the array that we are using
	hash = {}
	arr.each do |item|
		#add the key as a value to the hash so it doesn't look empty when printing
		hash[item] = "value: " + item.to_s
	end 
	hash
	
end

def array_to_hash(arr)
	puts "nope"
end
