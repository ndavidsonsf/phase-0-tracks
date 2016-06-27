# Pseudocode
# Main Menu
# => 1. Add New Information
# => 2. Update Existing Information
# => 3. Delete Information
# Use methods to define each option
# 	- Add new
# 		- Take information from user
# 		- Adds information to data base
#  -



require 'SQLite3'




# add new information
def add_new(db, horse_name, horse_breed, horse_color, horse_age, horse_rideable)
	db.execute("INSERT INTO horses (name, breed, color, age, rideable) VALUES (?, ?, ?, ?, ?)", [horse_name, horse_breed, horse_color, horse_age, horse_rideable])
end


def add_new_input(db)
	puts
	print "Name: "
	horse_name = gets.chomp
	print "Breed: "
	horse_breed = gets.chomp
	print "Color: "
	horse_color = gets.chomp
	print "Age: "
	horse_age = gets.to_i
	print "Rideable (y/n): "
	horse_rideable_input = gets.chomp
	if horse_rideable_input == "y"
		horse_rideable = "true"
	else
		horse_rideable = "false"
	end
	add_new(db, horse_name, horse_breed, horse_color, horse_age, horse_rideable)
end



# Main program
def mainMenu
		# Initializes database
	db = SQLite3::Database.new('horses.db')
	db.results_as_hash = true

	# SQL command to create table
	create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS horses (
			id INTEGER PRIMARY KEY,
			name VARCHAR(255),
			breed VARCHAR(255),
			color VARCHAR(255),
			age INT,
			rideable BOOLEAN
		)
		SQL

	# Execute SQL command
	db.execute(create_table_cmd)


	user = 0
	while user != 5 do
		puts "-" * 50
		puts
		puts "Horse Database".center(50)
		puts
		puts "-" * 50
		puts "Main Menu".center(50)
		puts
		puts "     1. Add New Information"
		puts "     2. Update Existing Information"
		puts "     3. Delete Information"
		puts "     4. Print Database"
		puts "     5. Exit"
		print "Please select: "
		user = gets.to_i
		puts

		if user == 1
			add_new_input(db)
		elsif user == 2
			update_info_input(db)
		elsif user == 3
			delete_info_input(db)
		elsif user == 4
			print_info(db)
		else
			break
		end
				
	end
	
end


mainMenu