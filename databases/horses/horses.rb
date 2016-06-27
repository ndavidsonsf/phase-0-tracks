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
		date_aquired DATE,
		date_of_birth DATE,
		age INT
		rideable BOOLEAN
	)
	SQL

# Execute SQL command
db.execute(create_table_cmd)


# Main program
def mainMenu
	user = 0
	while user != 4 do
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
		puts "     4. Exit"
		print "Please select: "
		user = gets.chomp
		if user == 1 || user == 2 || user == 3
			user_input()
		else
			break
		end
	end
	
end


mainMenu