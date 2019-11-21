#!/usr/bin/ruby

system ('cls')

=begin
Help match up teams for the first round of a seed-based tournament. 
In a seeded tournament, and during the first round, the top seed is matched with the bottom seed, 
the 2nd highest team is matched with the second lowest, etc.  

Example:

Seeds
1. Wisconsin
2. Michigan
3. Michigan State
4. Indiana

Matchups:
(1) Wisconsin versus (4) Indiana,
(2) Michigan versus (3) Michigan State 

Create the first round matches for a tournament using seeds.

Your program should include a menu, where you can enter teams, and then seed them.  

Example: 

Welcome to My Tournament Generator. Enter a selection:
1. Enter teams
2. List teams
3. List matchups
0. Exit program


Your program should check for the following: 

1. If an odd number of teams are entered, the top-seeded team gets a bye (doesn't play)

Example:

Seeds
1. Wisconsin
2. Michigan
3. Michigan State
4. Indiana
5. Purdue

Matchups: 
(1) Wisconsin has a bye
(2) Michigan versus (5) Purdue
(3) Michigan State versus (4) Indiana

Hints:
You should utilize Classes (probably just one).
Make sure you can do multiple match-ups (that is, match up once, then come back and match-up again).

=end

# class Tournament
#
#     attr_accessor :arr_team
#
#     def enroll(team)
#         arr_team.push(team)
#     end
#
#     def list()
#         arr_team.each {|value| print value, ' '}
#     end 
#
#     def matchup()
#		
#         arr_match = Array.new()
#         tot = arr_team.length
#         first = 0
#         last = tot - 1
#         if tot.remainder(2) > 0
#             arr_match.push("[#{arr_team[0]} vs BYE]")
#             first = 1
#         end
#         while first <= last do
#             arr_match.push("[#{arr_team[first]} vs #{arr_team[last]}]")
#             first += 1
#             last -= 1
#         end
#         arr_match.each {|value| puts value}
#     end 
#     def del_list
#         arr_team.delete_if {|a| a != nil}
#     end
# end
#
# copa = Tournament.new()
#
# opt = -1
# copa.arr_team = Array.new()
#
# while opt != 0 do
#     puts "\n
#     Select your option: \n
#     1. Enter teams
#     2. List teams
#     3. List matchups
#     4. Clear list
#     0. Exit program\n\n
#     Type your option: "
#     opt = gets.chomp.to_i
#     if opt == 1
#         puts "Enter teams (to exit type 0):"
#         rpt = -1
#         while rpt != "0"
#             rpt = gets.chomp.to_s
#             if rpt != "0"
#                 copa.enroll(rpt)
#             end
#         end
#     elsif opt == 2 
#         puts "List of enrolled teams:"
#         copa.list
#     elsif opt == 3
#         puts "List matchups:"
#         copa.matchup
#     elsif opt == 4
#         puts "List cleared:"
#         copa.del_list
#     elsif opt == 0
#         puts "The program has ended\n"
#     else
#         puts "Invalid option"
#     end
# end

=begin


Extra practice:

A gym has hired you to solve a problem. Most of their clients are fairly new to weightlifting and don’t know what to put on the barbell for a particular weight. 
The weights they have made available are in 45, 35, 25, 15, 10 and 5 lbs. increments. 
Build them a Ruby application that will tell them, for a given weight, what plates to put on each side of the bar. 
Bear in mind that the bar itself weighs 45 lbs.
For example, if they want to load 225 lbs. on the bar, they will need to put two 45 lbs. plates on each side of the bar. 
45x4 = 180 lbs. Plus 45 lbs. for the barbell itself equals a total of 225 lbs. 

Hint: You don't really need to create Objects for this one, so you get a break from that. But you will need to create methods!



300
300 - 45 = 255
255/45 = 5 & 30
4 & 75
75/35 = 2 & 5
0 & 75
75/25 = 3 & 0
2 & 25
25/15 = 1 & 10
0 & 25
25/10 = 2 & 5
2 & 5
5/5 = 1 & 0
>> add 5 or lose 5

{45 => 4, 35 => 0, 25 => 2, 15 => 0, 10 => 2, 5 => 0}
=end

#
class Weight_balance 
	attr_accessor :net_w, :plt_w, :ini_w, :bar_w, :plt

	def plates
		@plt = {45 => 0, 35 => 0, 25 => 0, 15 => 0, 10 => 0, 5 => 0}
		# @plt = Hash.new(0)
		# @w = -1
		# puts "Define the set of plates to be used (set to 0 to exit)"
		# while @w != 0
		#     puts "What is the plate weight:"
		#     @w = gets.chomp.to_i
		#     if @w != 0 
		#         @plt[@w] = 0
		#     end
		# end
		puts "Plates set!"
		puts @plt
		puts "--------------\n"
	end

	def bar
		@bar_w = 45
		# puts "How much does the bar weight:"
		# @bar_w = gets.chomp.to_i
		puts "Bar weight set!"
		puts "--------------\n"
	end

	def weight
		@ini_w = 300
		# puts "How much weight will you lift today?"
		# @ini_w = gets.chomp.to_i
		@net_w = @ini_w - @bar_w                                         # set the NET weight = INI weight - BAR weight
		puts "Weight set!"
		puts "--------------\n"
	end

	def calc_num_plates (plt_w)
		if @net_w != 0                        
			# puts "Start net_w: #{@net_w}"
			plt_cnt = 0
			a = @net_w.divmod(plt_w)                                # get the amount of plates of that weight once can use
			if a[0] > 0                                             # we have at least one plate that can be used
				if a[0].remainder(2) != 0                           # odd number of plates, put one back
					plt_cnt = a[0] - 1                              # put the amount of even plates of that weight on the bar
				else                                                # even number of plates 
					plt_cnt = a[0]                                  # put the amount of even plates of that weight on the bar
				end
				puts "Put #{plt_cnt} plates of #{plt_w} Lbs. on the bar for a total of #{plt_cnt * plt_w} Lbs."
				@net_w -= (plt_cnt * plt_w)                         # get the weight left to calculate with another plate
				@plt[plt_w] = plt_cnt                               # associate in the hash the plate with the amount used - post execution verification
				# print "New net_w: #{@net_w} \n"
				# puts "Number of plates of #{plt_w} Lbs used #{plt_cnt} \n"
			else
				puts "You have an excess of #{@net_w} Lbs. You can add the same amount or take it out."
				@net_w = 0
			end
		end
	end

	def balance
		puts "> > > Balance started! < < <"
		@plt.each_key { |plt_w| self.calc_num_plates(plt_w) }
		puts "> > > Balance complete! < < <"
		puts "--------------\n"
	end

	def verify
		puts "> > > Verification process! < < <"
		puts "Weight to be lifted: #{@ini_w}"
		puts "Bar Weight: #{@bar_w}"
		puts "Plates available: #{@plt.keys}"
		puts "Plates and amount used: #{@plt}"
		puts "> > > Verification complete! < < <\n"
	end
end

gym = Weight_balance.new()
gym.plates          # set plate weight
gym.bar             # set bar weight
gym.weight          # set total weight to be lifted
gym.balance         # return what to use to balance the wight on the bar
gym.verify          # check all plates available and how many were used
#
