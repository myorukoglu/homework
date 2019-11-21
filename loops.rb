#!/usr/bin/ruby
#customers = [
#	{:name => "Sally", :balance => 100 }, 
#	{:name => "Ali", :balance => 200 },
#	{:name => "Jopan", :balance => 130 },
#	{:name => "Maru", :balance => 102 },
#	{:name => "Jose", :balance => 3300 }
#	]
#
#customers.each_with_index do |customer, index|
#	if index == 1
#		puts "Check out number #{index + 1} #{customer[:name]} and give them $10000"
#		customer[:balance] = customer[:balance] + 10000
#	else
#		puts "Check out number #{index + 1} #{customer[:name]}"
#		customer[:balance] = customer[:balance] - 100
#	end
#	puts "Balance of account = #{customer[:balance]}\n\n"
#	
#end

#count = 10
#while count >= 0 do 
#	puts Math.sqrt(count)
#	puts count
#	count = count - 1
#end

#for i in (1..10).to_a do 
#	puts i
#end

#10.times do |i|
#	puts Math.sqrt(i)
#end 
#
#my_array = [1,2,4,5]
#my_array.each do |x|
#	puts x
#end


#puts is_greater?(21,20)

#puts is_greater?(21,23)

names = ["Ali", "Jose", "Fib"]

def some_method(name)
	if name != "Jose"
	"* " + name
	end
end


names.each do |name|
	puts some_method(name)
end