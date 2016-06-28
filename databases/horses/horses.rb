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

# Blue Dog, name, Blue Horse Dog
# UPDATE horses SET name = "Blue Horse Dog" WHERE name = "Blue Dog";
def update_info(db, horse_to_update, selection_to_update, updated_value)
	db.execute("UPDATE horses SET #{selection_to_update}= ? WHERE name = ?", [updated_value, horse_to_update])
end

def delete_info(db, horse_to_update)
	db.execute("DELETE FROM horses WHERE name = ?", [horse_to_update])
end

def print_info(db)
	display_info = db.execute("SELECT id, name, breed, color, age, rideable FROM horses")

	display_info.each do | row |
		
		row.each do | column_name, value |
			if column_name.is_a? Integer
				next
			end
			print "#{column_name}: #{value}\t\t"

		end
		puts
	end
	puts
end


def add_new_input(db)
	puts "-" * 50
	puts "Add New Horse Information: "
	print "Name: "
	horse_name = gets.split.map(&:capitalize).join(' ')
	print "Breed: "
	horse_breed = gets.split.map(&:capitalize).join(' ')
	print "Color: "
	horse_color = gets.split.map(&:capitalize).join(' ')
	print "Age: "
	horse_age = gets.to_i
	print "Rideable (y/n): "
	horse_rideable_input = gets.chomp.downcase
	if horse_rideable_input == "y"
		horse_rideable = "true"
	else
		horse_rideable = "false"
	end
	add_new(db, horse_name, horse_breed, horse_color, horse_age, horse_rideable)
end

def update_info_input(db)
	puts "-" * 50
	puts "Update Information: "
	print "Enter the horse record you would like to update: "
	horse_selection = gets.split.map(&:capitalize).join(' ')

	while true do
		puts "-" * 50
		puts "Enter the category that you would like to update: "
		puts "     1. Name"
		puts "     2. Breed"
		puts "     3. Color"
		puts "     4. Age"
		puts "     5. Rideable"
		print "Please select: "
		update_selection = gets.to_i

		if update_selection == 1
			print "New name: "
			new_name = gets.chomp.split.map(&:capitalize).join(' ')
			update_info(db, horse_selection, "name", new_name)
			break
		elsif update_selection == 2
			print "New breed: "
			new_breed = gets.chomp.split.map(&:capitalize).join(' ')
			update_info(db, horse_selection, "breed", new_breed)
			break
		elsif update_selection == 3
			print "New horse_color: "
			new_color = gets.chomp.split.map(&:capitalize).join(' ')
			update_info(db, horse_selection, "color", new_color)
			break
		elsif update_selection == 4
			print " New age: "
			new_age = gets.to_i
			update_info(db, horse_selection, "age", new_age)
			break
		elsif update_selection == 5
			print "Rideable (y/n): "
			rideable = gets.chomp.downcase
			if rideable == "y"
				new_rideable = "true"
			else
				new_rideable = "false"
			end
			update_info(db, horse_selection, "rideable", new_rideable)
			break
		else
			puts "Not a valid choice.  Try again."
		end
	end
end

def delete_info_input(db)
	puts "-" * 50
	puts "Delete Information: "
	print "Enter the horse record you would like to delete: "
	horse_selection = gets.chomp.capitalize
	delete_info(db, horse_selection)
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