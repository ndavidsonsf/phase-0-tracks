=begin
	-Prompt the designer/user for all of this information.
	-Convert any user input to the appropriate data type.
	-Print the hash back out to the screen when the designer has answered all of the questions.
	-Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
	-Print the latest version of the hash, and exit the program.

	Psuedocode:
	- Ask for user input
	- Collect user inputs
	- Convert to appropriate data types
	- Add inputs to hash
	- print hash to verify information
	- ask user if there is a correction
	- allow user to enter correction, otherwise skip
	- print hash
=end

# main logo and welcome screen
puts
puts "-------------------------------------------------"
puts "Hash Interiors".center(48)
puts "1234 Main Street".center(48)
puts "Somewhere, AA 12345".center(48)
puts "info@hashinteriors.com".center(48)
puts "-------------------------------------------------"
puts 
puts "New Client information Card".center(48)
puts "-------------------------------------------------"

# intialize new hash
client_card = {}

# User Inputs

print "Name: "
client_card[:name] = gets.chomp

print "Age: "
client_age = gets.chomp
client_age = client_age.to_i
client_card[:age] = client_age

print "Number of Children (if none, press enter): "
num_of_children = nil 
num_of_children = gets.chomp
num_of_children = num_of_children.to_i
client_card[:children] = num_of_children

print "Decor theme: "
client_card[:theme] = gets.chomp

puts "Likes (enter y or n)"

print "Fringe?: "
likes_fringe = gets.chomp
likes_fringe = likes_fringe.downcase
if likes_fringe == "y"
	client_card[:fringe] = true
else
	client_card[:fringe] = false
end

print "Hardwood?: "
likes_hardwood = gets.chomp
likes_hardwood = likes_hardwood.downcase
if likes_hardwood == "y"
	client_card[:hardwood] = true
else
	client_card[:hardwood] = false
end

# print results
puts "-------------------------------------------------"
puts "You entered: "
p client_card
puts "-------------------------------------------------"

# prompt user if they made a mistake
