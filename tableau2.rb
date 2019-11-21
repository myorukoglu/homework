#!/usr/bin/ruby

class Team 
	attr_accessor :seed, :mascot, :name
	def initialize(name, seed)
		@seed = seed
		@name = name
	end
	def to_s 
		@name
	end
end


class Bracket 
	
	def initialize
		@seeds = []
	end
	
	def add_team(team)
		@seeds[team.seed - 1] = team
	end
	
	def setup
		set_bracket_size
		set_filled_seeds
		set_matches
	end
	
	def set_filled_seeds
		@filled_seeds = Array.new(@bracket_size)
		@bracket_size.times do |index|
			if @seeds[index]
				@filled_seeds[index] = @seeds[index] 
			else 
				#exit out of the loop since there is nothing left to fill it
				break
			end
		end 
	end

	def set_bracket_size
	 	total_teams = @seeds.length
		
		if total_teams % 8 == 0 || total_teams == 4 || total_teams == 2
			@bracket_size = total_teams
		elsif total_teams < 8 
			if total_teams == 3 
				@bracket_size = 4
			else 
				@bracket_size = 8
			end
				
		elsif total_teams > 8
			@bracket_size = total_teams
			
			while @bracket_size % 8 != 0 do 
				@bracket_size = @bracket_size + 1 
			end
		end
	end	
	
	def set_matches
		@matches = Array.new(@bracket_size/2)
		filled_seeds_reverse = @filled_seeds.reverse
		
		@filled_seeds.each_with_index do |team, index|
			if index + 1 <= @bracket_size/2
				if filled_seeds_reverse[index] 
					@matches[index] =  team.to_s + " vs " + filled_seeds_reverse[index].to_s
				else
					@matches[index] =  team.to_s + " has a bye "
				end 
				
			end
		end
	end
	
	def to_s
		display = "Your Bracket Matchups: \n"
		@matches.each do |teams|
			display = display + "\t" + teams + "\n"
		end 
		display
	end
end

#create our match seeds
seeds = ["NC State", "Wake Tech", "Duke", "UNC", "OSU", "Liberty", "Shaw", "William Peace", "PSU"]
#seeds = ["NC State", "Wake Tech", "Duke"]
#seeds = ["NC State", "Wake Tech", "Duke", "UNC", "OSU"]

#create new bracket
tournament = Bracket.new()


seeds.each_with_index do |name, index|
	t = Team.new(name, index + 1)
	tournament.add_team(t)
end

tournament.setup

#call the to_s method by calling the object with puts
puts tournament