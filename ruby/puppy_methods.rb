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


end

# Driver Code

fido = Puppy.new

fido.fetch('ball')
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.shakes

