=begin
Pseudocode

- Asks User for name
- break the input into an array of two names
	- reverse the order on the names array
- break the names into an array of letters
	- use conditionals to:
		-shift the vowels to the next in order
		-shift the consonants to the next in the alphabet
	- rejoin the the letters
	- rejoin the strings
	- print for the user

=end

# encoding method
def simple_encoder(letter)
	
	vowels = ['a', 'e', 'i', 'o', 'u']
	
	# checks if the letter is in the vowels array
	if vowels.include?(letter) 
		
		v_index = vowels.index(letter) # if the letter is a vowel get its index in the the array
		
		# checks if it is u, and returns a
		if v_index == 4 
			return 'a'
		end
		return vowels[v_index + 1] # return the vowel at the next index
	else
		 # check for the letter z and return the first consonant
		if letter == 'z'
			return 'b'
		end
		
		# changes others to the next letter
		next_letter = letter.next 
		
		# checks if that letter is a vowel, if it is it advances to the next letter again
		if vowels.include?(next_letter) 
			return next_letter.next
		end
		
		# example c -> d
		return next_letter
	end
end


puts "--------------------------------------------------"
puts "DBC Alias Manager".center(50)
puts "--------------------------------------------------"
puts

# initalizes array to store name tuples
stored_names = []

# main program loop
while true do
	
	# user input
	print "Enter your name or type 'quit': "
	user_name = gets.chomp
	user_name_lower = user_name.downcase
	
	# exit case
	if user_name_lower == 'quit'
		break	
	end
	
	# splits the array into names
	names_array = user_name_lower.split(' ')
	
	# takes each name 
	# 1. splits into individual characters
	# 2. maps the characters and passes each letter to the encoder method
	# 3. stores the encoded letters as an array in place of the original name string
	names_array.each_index do | name_index |
		names_array[name_index] = names_array[name_index].split('').map! { |letter| simple_encoder(letter) }
	end

	# create array of user input and encoded name
	stored_names << [names_array, user_name]
	
end

# Outputs
puts

# takes each stored name tuple
# 1. extracts the encoded names as names_array
# 2. extracts the original user entered name as user_name
# 3. prints extracted user_name
# 4. reverses then loops through the array of encoded names
# 5. joins each name (each is still an array of characters)
# 6. capitalizes each name
# 7. prints the formatted name
stored_names.each do | name_tuples |
	names_array = name_tuples[0]
	user_name = name_tuples[1]
	print "#{user_name} is also known as "
	names_array.reverse.each do | name |
		print "#{name.join.capitalize} "
	end
	puts
end






















			
			
			

