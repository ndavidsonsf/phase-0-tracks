puts ""
puts "-------------------------------------"
puts " Werewolf Inc. - New Employee Record"
puts "-------------------------------------"
puts ""


# Ask user how many employees
puts "Enter the number of employees you would like to enter:"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

# Loop to gather employee information

while number_of_employees > 0
	# User Inputs
	puts ""
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

	# loop for allergies
	loop do
		puts "Please list all allergies, if none type 'done'."
		allergies = gets.chomp
		if allergies == "done" || allergies == "sunshine"
			break
		end
	end

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

	puts ""
	puts "----------------------------"
	puts "You're result are:"

	# Detection logic
	if vampire_name == true
		puts "Definitely a vampire."
	elsif vampire_age = false && (vampire_garlic = true || vampire_insurance = true)
		puts "Probably not a vampire."
	elsif vampire_age = true && (vampire_garlic = true && vampire_insurance = true) || allergies == "sunshine"
		puts "Probably a vampire."
	elsif vampire_age = true && vampire_garlic = true && vampire_insurance = true
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive."
	end
	number_of_employees -= 1

	puts ""
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end



