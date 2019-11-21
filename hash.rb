#payroll = 0
#wage_rate = 20
#
#t = []
#
#t.push({name: "John", age: 31, status: "temp", hours_worked: 10})
#t.push({name: "Mary", age: 31, status: "temp", hours_worked: "10"})
#
#
#t.each do |hash| 
# 	hash[:hours_worked] = hash[:hours_worked].to_i
#	hash[:paycheck] = hash[:hours_worked] * wage_rate
#	payroll = payroll + hash[:paycheck]
#	
#end 
#puts t
#puts payroll



#list = ["tiger","mouse","frog","fly","swan"]
#favorite = "mouse"
#puts list.include?(favorite)

#list.each do |list_item|
#	if list_item == favorite
#		puts "I love this " + list_item
#	else
#		puts "I hate this " + list_item
#	end 
#end
#
#animals = ["tiger","mouse","frog","fly","swan"]
#favorite = "frog"
#
#if animals.include? favorite
#	puts "I love that " + favorite
#else 
#	puts "I don't care for those animals"
#end
#person = {}
#
#puts "What's your name?"
#person[:name] = gets.chomp
#
#puts "What's your age?"
#person[:age] = gets.chomp
#
#puts "What's your hometown?"
#person[:hometown] = gets.chomp
#
#puts "What's your Favorite Food?"
#person["Favorite Food"] = gets.chomp
#
#puts "This is " + person[:name] + ". They are " + person[:age] + ", from " + person[:hometown] + " and they love " + person["Favorite Food"] + " and they work at " + person[:job]










person = {:name => nil, :age => nil, :hometown => nil, "Favorite Food" => nil}

person.each do |key|
	puts "What's your " + key[0].to_s
	person[key[0]] = gets.chomp
end

puts "This is " + person[:name] + ". They are " + person[:age] + ", from " + person[:hometown] + " and they love " + person["Favorite Food"]
