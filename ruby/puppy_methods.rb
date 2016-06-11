class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(quantity)
  	puts "Woof! " * quantity
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(years)
  	years = years * 7
  	puts "I am #{years} in dog years."
  end

  def shakes
  	puts "*raises paw*"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end


end

# Driver Code

# Creates new instance of Puppy class
# calls all Puppy class instance methods on fido
fido = Puppy.new
fido.fetch('ball')
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.shakes

# Creates Cyclist class and instance methods
class Cyclist

	def pedal(intensity)
		puts "I am pedaling #{intensity}!"
	end

	def brake(intensity)
		puts "I am braking #{intensity}!"
	end

	def initialize
		puts "I am getting on my bike..."
	end

end

# loop to create 50 instances of Cyclist class
# adds those instances to an array

count = 0
cyclists = []
until count == 50
	cyclists.push(Cyclist.new)
	count += 1
end

# interates through the array and calls each instance method
cyclists.each do |rider|
	rider.pedal('fast')
	rider.brake('hard')
end

