puts ""
puts "-------------------------------------"
puts " Werewolf Inc. - New Employee Record"
puts "-------------------------------------"
puts ""

# User Inputs
puts "Enter your name: "
name = gets.chomp

puts "Enter your year over birth: "
birth_year = gets.chomp

puts "Enter your age: "
age = gets.chomp

puts "Our cafeteria serves delicious garlic bread, should we order some for you? (y/n)"
orders_garlic = gets.chomp

puts "Would you live to enroll in our comprehensive health plan? (y/n)"
insurance = gets.chomp


# Vampire detection variables
vampire_name = false
vampire_age = false
vampire_garlic = false
vampire_insurance = false

# Detection of Vampire name
if name == "Drake Cula" || name == "Tu Fang"
	vampire_name = true
else
	vampire_name = false
end

# Detection of correct age
correct_age = 2016 - birth_year.to_i
if correct_age != age.to_i
	vampire_age = true
end

# Detection of liking garlic
if orders_garlic == "y" || orders_garlic == "yes"
	vampire_garlic = false
else
	vampire_garlic = true
end

# Detection of insurance
if insurance == "y" || insurance == "yes"
	vampire_insurance = false
else
	vampire_insurance = true
end

# Detection logic
if vampire_name == true
	puts "Definitely a vampire."
elsif vampire_age = false && (vampire_garlic = true || vampire_insurance = true)
	puts "Probably not a vampire."
elsif vampire_age = true && (vampire_garlic = true && vampire_insurance = true)
	puts "Probably a vampire."
elsif vampire_age = true && vampire_garlic = true && vampire_insurance = true
	puts "Almost certainly a vampire."
else
	puts "Results inconclusive."
end



