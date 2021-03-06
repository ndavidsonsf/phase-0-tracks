class Santa

	attr_reader = :ethnicity
	attr_accessor = :gender, :age

	def speak
		puts "Ho, ho, ho!  Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		@age += 1
		
	end


	def get_mad(reindeer_name)
		mad_at = @reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		p @reindeer_ranking
	end

	def initialize(gender, ethnicity, age)
		# puts "Initializing Santa instance..."
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

	def print
		puts puts "Recorded: Santa identifying as #{@gender} and #{@ethnicity} of age #{@age}."
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
	"queer"
]
example_ethnicities = [
	"black",
	"Latino",
	"white",
	"Japanese-African",
	"American-Indian",
	"Mystical Creature (unicorn)",
	"Straight up Ninja"
]


# testing release1

santas = []

santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))
santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))
santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))


# testing release 2

=begin
saint_nick = Santa.new(example_genders.sample, example_ethnicities.sample, rand(100))
puts "Recorded: Santa identifying as #{saint_nick.gender} and #{saint_nick.ethnicity} of age #{saint_nick.age}."
kris_kringle = Santa.new('male', 'white', 70)
puts "Recorded: Santa identifying as #{kris_kringle.gender} and #{kris_kringle.ethnicity} of age #{kris_kringle.age}."
puts "Santa just celebrated a birthday, they are now #{kris_kringle.celebrate_birthday} years old."
saint_nick.get_mad("Rudolph")
saint_nick.gender = 'questioning'
puts "Recorded: Santa identifying as #{saint_nick.gender} and #{saint_nick.ethnicity} of age #{saint_nick.age}."
=end

count = 0
until count == 10
	santas.push(Santa.new(example_genders.sample, example_ethnicities.sample, rand(140)))
	count += 1
end

santas.each do |num|
	num.print
end



