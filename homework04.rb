#system ('cls')
# Ruby Loops and Collections Homework
# 1. Write a program that asks for a score (an integer), and assigns a letter grade based on the score. 

# Letter grades are assigned as follows:
# 100-90: A
#  89-80: B
#  79-70: C
#  69-60: D
# Less than 60: F
# More than 100: "Wrong score"
#grade_scale_array = Array.new(101)
#grade_scale_hash =  {}
#101.times do |num|
#   	grade = ""
#	if num >= 90 
#		grade = "A"
#	elsif num >= 80
#		grade = "B"
#	elsif num >= 70
#		grade = "C"
#	elsif num >= 60
#		grade = "D"
#	else
#		grade = "F"
#	end
#	grade_scale_hash[num] = grade
#	grade_scale_array[num] = grade
#end

# g_let_sco = {"A" => [90, 100], "B" => [80, 89], "C" => [70, 79], "D" => [60, 69], "F" => [0, 59]}
# puts "What is the Grade Score (0-100)"
# g_score = gets.chomp.to_i
#
#puts "Array Score: " + grade_scale_array[g_score]
#puts "Hash Score: " + grade_scale_hash[g_score]
#
#puts grade_scale_hash
#puts grade_scale_array
# if g_score < 0 || g_score > 100 
#     puts "Wrong Score \n"
# elsif g_score >= g_let_sco["A"][0] && g_score <= g_let_sco["A"][1]
#     puts "Your grade is \"A\"\n"
# elsif g_score >= g_let_sco["B"][0] && g_score <= g_let_sco["B"][1]
#     puts "Your grade is \"B\"\n"
# elsif g_score >= g_let_sco["C"][0] && g_score <= g_let_sco["C"][1]
#     puts "Your grade is \"C\"\n"
# elsif g_score >= g_let_sco["D"][0] && g_score <= g_let_sco["D"][1]
#     puts "Your grade is \"D\"\n"
# else   g_score >= g_let_sco["F"][0] && g_score <= g_let_sco["F"][1]
#     puts "Your grade is \"F\"\n"
# end


# 2. Create a program that takes two numbers from the user, finds out if the first number is divisible by the second. If not divisible, let the user know what the remainder is.

# puts "Number 1:"
# a = gets.chomp.to_i
# puts "Number 2:"
# b = gets.chomp.to_i
#
# if b == 0
#     puts "Division by 0 not permited"
# else
#     r = a.divmod(b)
#     if r[1] == 0
#         puts "#{a} is divisible by #{b}, equals to #{r[0]}"
#     elsif
#         puts "#{a} is not divisible by #{b}, equals to #{r[0]} and the remainder is #{r[1]}"
#     end
# end



# 3. Create a program that takes a name (or any word, really), and spells it out, one letter at a time (horizontally). 
# Then have the name/word spelled out in one line (vertically), but with commas between each letter (but not after the last letter).
#
# puts "Type a word:"
## a = gets.chomp.to_s
# a = "hello"
# 
#a.each_char.with_index do |char, index|
#	if a.length - 1 != index
#		print char + ","
#	else
#		print char
#	end
#end
# 
#
# puts ""
# a.each_char do |value|
#     puts value.to_s
# end
#

# 4. Write a program that translates one English word into Pig Latin. Because the rules for Pig Latin can vary, I'll be specific:

# If the given word starts with a consonant, move only that consonant to end and then add "ay" to the end (e.g.: coffee -> offeecay, blogger -> loggerbay)
# If the given word starts with a vowel, add "way" to the end of the word (e.g., office -> officeway)

# puts "Type a word:"
## a = gets.chomp.to_s
## a = "office" 
# a = "Coffee"
# puts a[0]
# if a[0].end_with?("a", "e", "i", "o", "u")
#     a.concat("way")
# else
#     a.insert(-1,a[0].downcase.to_s)
#     a.concat("ay")
#     a.delete_prefix!(a[0])
# end
# puts a

# 5. Create a Ruby program that finds how many prime numbers are between 1 and a number given by the user. 
# Hint: look through the Ruby Docs on the Prime class, and note that sometimes you must import, or require, certain Ruby libraries.

# require 'prime'
#  puts "Type a number greater than 0:"
#  a = gets.chomp.to_i
# # a = 10

# count = 0
# Prime.each(a) do |prime|
#   count += 1
# end
# print "There are #{count} prime numbers between 1 and #{a}"


# 6. Write a Rock, Paper, Scissors game where a user can play against the computer.

# The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!


# user_win = 0
# cpu_win = 0
# game = 1
# while user_win < 5 && cpu_win < 5 do

#     puts "Game #{game}"
#     puts "choose one (rock, paper, or scissors): "
#     a = gets.chomp.to_s

#     if a.downcase == "rock"
#         usr = 0
#     elsif a.downcase == "paper"
#         usr = 1
#     else a.downcase == "scissors"
#         usr = 2
#     end
#     cpu = rand(0..2)

#     puts "usr = #{usr}"
#     puts "cpu = #{cpu}"

#     if usr == cpu
#         puts "draw"
#     elsif usr > cpu || (usr == 0 && cpu == 2)
#         user_win += 1
#         puts "user wins (#{user_win} to #{cpu_win})"
#     else cpu > usr || (cpu == 0 && usr == 2)
#         cpu_win += 1
#         puts "cpu wins (#{cpu_win} to #{user_win})"
#     end
#     game += 1
# end

# if user_win == 5
#     puts "User wins the game #{user_win} to #{cpu_win}"
# else
#     puts "CPU wins the game #{cpu_win} to #{user_win}"
# end

# 7.  Fizzbuzz: Write a program that prints the numbers from 1 to 100. But for multiples of three (3) print "Fizz" instead of the number, 
# and for the multiples of five (5) print "Buzz". For multiples of both three (3) and five (5), print "FizzBuzz".

# a = Array.new(15) {|ind| ind.to_i + 1}
#
# a.each do |ind|
#     print ind
#     if ind.remainder(3) == 0 && ind.remainder(5) == 0
#         a.delete_at(ind-1)
#         a.insert(ind-1, "FizzBuzz")
#
#     elsif ind.remainder(3) == 0
#         a.delete_at(ind-1)
#         a.insert(ind-1, "Fizz")
#     elsif ind.remainder(5) == 0
#         a.delete_at(ind-1)
#         a.insert(ind-1, "Buzz")
#     end
#     print a[ind-1]
#     print "\n"
# end
# a.each {|a| print a, " "}

#
#100.times do |i|
#	num = i + 1
#	if num % 5 == 0 && num % 3 == 0
#		puts "FizzBuzz"
#	elsif num % 5 == 0
#		puts "Buzz"
#	elsif num % 3 == 0
#		puts "Fizz"
#	else 
#		puts num
#	end
#end
	

# 8. Create an array of test scores (anywhere from 0 to 100; sorry, no extra credit was given).

#     Now I want a couple things:

# Print out the scores in ascending order.
# Find the average of those test scores and print it out.

# tst_scr = [87, 76, 95, 85]
# print "Grades: #{tst_scr} \n" 
# print "Sorted: #{tst_scr.sort} \n" 
# puts "Avg: #{tst_scr.sum(0.0) / tst_scr.length}"

# 9. Create a program with a hash of countries & capitals - don't worry I'll give it to you:

# cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", 
# "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", 
# "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}

# Ask the user for the capital of each country, and tell them if they are Correct or Wrong. 
# Also, keep score and give their score at the end of the quiz. Maybe have some smart-alecky comments about their score (see example below).

# cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", 
#               "France"=>"London", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", 
#               "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", 
#               "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", 
#               "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}
# qst = 0
# scr = 0
# cos_n_caps.each do |key, value|
#     puts "What is the capital of #{key}:"
#     a = gets.chomp.to_s
#     qst +=1
#     if value.downcase == a.downcase
#         puts "Nice"
#         scr += 1
#     else
#         puts "Not nice"
#     end
# end
# puts "You answered #{scr} out of #{qst} correctly"
# if scr == 0
#     puts "Are you an Alien??"
# elsif scr > 0 && scr <= 5
#     puts "You should get out more"
# elsif scr > 5 && scr <= 15
#     puts "You've been around"
# else 
#     puts "The world is your background"
# end