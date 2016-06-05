# Pairing with Roger

=begin
def test
	puts "This is not a test"
	yield
end

test { puts "...or is it?"}
=end

types_of_cars = ['sedan', 'coupe', 'wagon', 'convertible', 'truck']

popular_cars = {
	'Ford' => 'Mustang', 
	'Chevy' => 'Camero', 
	'Honda' => 'Civic', 
	'Jeep' => 'Wrangler',
	'Toyota' => 'Prius' 
}

# iterate through the array with .each
types_of_cars.each do |car|
	puts car
end

puts "After .each call:"
p types_of_cars
puts

# iterate through the hash with .each
popular_cars.each do |make, model|
	puts "#{make} - #{model}"
end

puts "After .each call"
p popular_cars
puts

# iterate through the array with .map!
puts "Before:"
p types_of_cars

types_of_cars.map! do |car|
	puts car.upcase
	car.upcase
end

puts "After .map! call"
p types_of_cars
puts



