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

db = SQLite3::Database.new('horses.db')
db.results_as_hash = true

create_table_cmd <<-SQL
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
db.execute(create_table_cmd)

