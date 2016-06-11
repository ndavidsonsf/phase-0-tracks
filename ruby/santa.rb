class Santa

	def speak
		puts "Ho, ho, ho!  Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = [
			"Rudolph",
			"Dasher",
			"Dancer",
			"Prancer",
			"Vixen",
			"Comet",
			"Cupid",
			"Donner",
			"Blitzen"
		]
	end
end

#DRIVER CODE

# Release0
=begin
saint_nick = Santa.new
saint_nick.speak
saint_nick.eat_milk_and_cookies('chocolate chip')
=end

#Release1

santas = []
example_genders = [
	"agender",
	"female",
	"bigender",
	"male",
	"female",
	"gender fluid",
	"N/A"
]
example_ethnicities = [
	"black",
	"Latino",
	"white",
	"Japanese-African",
	"prefer not to say",
	"Mystical Creature (unicorn)",
	"N/A"
]

santas = []

santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))
santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))
santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))

p santas