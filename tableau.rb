class Bracket 
	
	def initialize(seeds)
		@seeds = seeds
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
					@matches[index] =  team + " vs " + filled_seeds_reverse[index]
				else
					@matches[index] =  team + " has a bye "
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
round_of_8 = Bracket.new(seeds)

#call the to_s method by calling the object with puts
puts round_of_8