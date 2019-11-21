#=begin 
#Write a program that asks for your favorite Crayola crayon and then takes the string and yells it back in all caps and in reverse.
#
#Write a program that asks for your mood for the day, then returns the length of the string. Then return the string with 'meow' prepended to it.
#
#Write a program that takes two numbers from the user and shows the sum, difference, product and quotient of the two numbers.
#
#Write a program that asks for a sentence. Then ask for their favorite word in that sentence. Then tell them what index that word starts at. See the Ruby Docs page for String for a handy method to use. 
#
#Write a program that asks for the cost of your dinner at a restaurant. The program will return back to you a tip of 18% of your meal cost. Make sure the tip is always returned with two decimal places.
#
#Write a program that accepts your age. Convert your age to how old you are in seconds. Convert your age to how old you would be on the 8 different planets (hint: search planet rotation conversion rates). Output what your age in years would be on each planet.
#
#Create a Mad Libs program with at least 10 inputs and a minimum of one each of these: verb, plural noun, adjective, preposition, geographical feature, object, number.
#=end
#
#
## PROBLEM 01
#system('cls')
#
#puts "Problem 01 - What is your favorite Crayola Caryon?"
#user_input = gets.chomp
#go_up = user_input.upcase
#go_reverse = go_up.reverse!
#user_output = go_reverse
#puts "#{user_output} is crazy cool!" "\n"
#
#
## PROBLEM 02
#system('cls')
#
#puts "Problem 02 - How is your mood today?"
#user_input = gets.chomp
#go_lenght = user_input.length
#user_output = user_input
#user_output.prepend "Meow "
#puts "#{user_output}" "\n"
#puts "#{user_input} has #{go_lenght} characters" "\n"
#
#
## PROBLEM 03
#system('cls')
#
#puts "Problem 03 - Sum, difference, product and quotient of two numbers"
#puts "Type the first number: "
#user_input_01 = gets.chomp.to_i
#puts "Type the second number: "
#user_input_02 = gets.chomp.to_i
#a = user_input_01
#b = user_input_02
#sum = a + b
#dif = a - b
#prd = a * b
#user_output = "\nSum of #{a} and #{b} equals to: #{sum} 
#Difference between #{a} and #{b} equals to: #{dif}
#Product of #{a} times #{b} equals to: #{prd}"
##check division by zero
#if b == 0
#	user_output "\nDivision by ZERO is not possible" 
#else
#	div = a / b
#	user_output "\nThe quotient between #{a} and #{b} equals to: #{div}"
#end  
#puts user_output "\n"
#
#
## PROBLEM 04
#system('cls')
#
#puts "Problem 04 - Index of a word in a sentence"
#puts "Type the sentence: "
#user_input_01 = gets.chomp
#puts "Type the word: "
#user_input_02 = gets.chomp
#s = user_input_01
#w = user_input_02
#i = s.index("#{w}")
## check if the word is part of the sentence?
#if s.include?("#{w}")
#	#check the index
#	user_output = "The word \"#{w}\" begins at index \#" << i.to_s << " in the sentence \"#{s}\"" 
#else
#	#word not found
#	user_output = "The word \"#{w}\" was not found in the sentence \"#{s}\""
#end
#puts user_output
#
#
## PROBLEM 05
#system('cls')
#
#puts "Problem 05 - 18% restaurant tip"
#puts "Meal cost: "
#user_input = gets.chomp
#a = user_input.to_f
#b = (a * 0.18).round(2)
#user_output = "Meal cost: #{user_input}\n
#18\% tip #{b}\n
#Total to pay: #{a+b}"
#puts user_output
#
#
## PROBLEM 06
#system('cls')
#
#puts "Problem 06 - Age across the Solar System"
#puts "How old are you? "
#user_input = gets.chomp.to_i
#t = user_input
## age in seconds
#tx = t*365.2425*24*60*60
#puts "You are #{tx.round(0)} seconds old"
## age in another planets
## Mercury	58.6 days	87.97 days 		
## Venus		243 days	224.7 days 		
## Mars		1.03 days	1.88 years 		
## Jupiter	0.41 days	11.86 years		
## Saturn	0.45 days	29.46 years 	
## Uranus	0.72 days	84.01 years 	
## Neptune	0.67 days	164.79 years 	
## Pluto		6.39 days	248.59 years	
#tx = t*365.2425/87.97
#puts "In Mercury you would be #{tx.round(4)} years old"
#tx = t*365.2425/224.70
#puts "In Venus you would be #{tx.round(4)} years old"
#tx = t*1/1.88
#puts "In Mars you would be #{tx.round(4)} years old"
#tx = t*1/11.86
#puts "In Jupiter you would be #{tx.round(4)} years old"
#tx = t*1/29.46
#puts "In Saturn you would be #{tx.round(4)} years old"
#tx = t*1/84.01
#puts "In Uranus you would be #{tx.round(4)} years old"
#tx = t*1/164.79
#puts "In Neptune you would be #{tx.round(4)} years old"
#tx = t*1/248.59
#puts "In Pluto you would be #{tx.round(4)} years old"
#

# PROBLEM 07
system('cls')

=begin	
Create a Mad Libs program with at least 10 inputs and 
a minimum of one each of these: verb, plural noun, adjective, preposition, geographical feature, object, number.

#original
On the evening before Christmas, Santa Claus was at the North Pole preparing his lovely deers. 
Nine they were but only one had a bright nose to guide the sleigh quickly through the night.
All the presents laid secure in the back seat and Santa was ready to go.
With Christmas ahead he flew through time to gift all good children around the world. 

On the evening before Christmas, Santa Claus was #preposition the #geographical_feature preparing his #adjective1 deers. 
#number1 they were but only #number2 had a #adjective2 nose to guide the #object #averb through the night.
All the #plural_noun laid #adverb1 in the back seat and #noun1 was ready to go.
With #noun2 ahead he flew through time to #verb2 all #adjective3 children around the #noun3. 
=end



madlib = ["(preposition)","(geographical_feature)","(adjective)","(number)","(number)","(adjective)",
		  "(object)","(adverb)","(plural_noun)","(adverb)","(noun)","(noun)","(verb)","(adjective)","(noun)"]

puts "Mad Lib\n\n
On the evening before Christmas, Santa Claus was __#{madlib[0]}__ the __#{madlib[1]}__ preparing his __#{madlib[2]}__ deers.\n
__#{madlib[3]}__ they were but only __#{madlib[4]}__ had a __#{madlib[5]}__ nose to guide the __#{madlib[6]}__ __#{madlib[7]}__ through the night.\n
All the __#{madlib[8]}__ laid __#{madlib[9]}__ in the back seat and __#{madlib[10]}__ was ready to go.\n
With __#{madlib[11]}__ ahead he flew through time to __#{madlib[12]}__ all __#{madlib[13]}__ children around the __#{madlib[14]}.\n\n
"
arr_index =  0
for a in madlib do
	puts "Type a/an #{a}"
	madlib[arr_index] = gets.chomp.upcase
	arr_index = arr_index + 1
	system('cls')
	puts "On the evening before Christmas, Santa Claus was __#{madlib[0]}__ the __#{madlib[1]}__ preparing his __#{madlib[2]}__ deers.\n
__#{madlib[3]}__ they were but only __#{madlib[4]}__ had a __#{madlib[5]}__ nose to guide the __#{madlib[6]}__ __#{madlib[7]}__ through the night.\n
All the __#{madlib[8]}__ laid __#{madlib[9]}__ in the back seat and __#{madlib[10]}__ was ready to go.\n
With __#{madlib[11]}__ ahead he flew through time to __#{madlib[12]}__ all __#{madlib[13]}__ children around the __#{madlib[14]}.\n\n
"
end

system('cls')

puts "Original\n\n
On the evening before Christmas, Santa Claus was at the North Pole preparing his lovely deers.\n
Nine they were but only one had a bright nose to guide the sleigh quickly through the night.\n
All the presents laid secure in the back seat and Santa was ready to go.\n
With Christmas ahead he flew through time to gift all good children around the world.\n\n
"

puts "Your Version\n\n
On the evening before Christmas, Santa Claus was __#{madlib[0]}__ the __#{madlib[1]}__ preparing his __#{madlib[2]}__ deers.\n
__#{madlib[3]}__ they were but only __#{madlib[4]}__ had a __#{madlib[5]}__ nose to guide the __#{madlib[6]}__ __#{madlib[7]}__ through the night.\n
All the __#{madlib[8]}__ laid __#{madlib[9]}__ in the back seat and __#{madlib[10]}__ was ready to go.\n
With __#{madlib[11]}__ ahead he flew through time to __#{madlib[12]}__ all __#{madlib[13]}__ children around the __#{madlib[14]}.\n\n
"

