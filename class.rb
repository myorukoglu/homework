#class Animal
#	attr_accessor :name
#	def initialize(name, kind, grammar_article, favorite_food)
#		@name = name
#		@kind = kind
#		@favorite_food = favorite_food
#		@full_tummy = false
#		if grammar_article == nil || grammar_article == ""
#			@article = "a"
#		else
#			@article = grammar_article
#		end
#	end
#	def to_s 
#		"My name is #{@name}.  I am #{@article} #{@kind}."
#	end
#	
#	def eat(food)
#		if food == @favorite_food
#			@full_tummy = true
#		end
#	end
#end
#chicken = Animal.new("Bob" ,"chicken", "a", "seed")
#puts chicken.name

#def addItUp(x,y) 
#	return 1000
#	x + y
#end
#
#num = addItUp(40,2)
#
#puts num

class Animal 

	def initialize(skin, sound)
		@skin = skin
		@sound = sound
	end
	
	def make_noise
		puts @sound
	end
	
	def shed 
		puts @skin
	end
	
end

dog = Animal.new("fur", "Bark")
dog.make_noise

cat = Animal.new("fur", "meow")
cat.make_noise