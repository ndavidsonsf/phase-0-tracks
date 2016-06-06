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

# main program loop
while true do
	
	# user input
	print "Enter your name or type 'quit': "
	user_name = gets.chomp
	user_name_lower = user_name.downcase
	
	# exit case
	if user_name_lower == 'quit'
		exit
	end
	
	# splits the array into names, and then to individual characters
	names_array = user_name_lower.split(' ')
	names_array[0] = names_array[0].split('').map! { |letter| simple_encoder(letter) }
	names_array[1] = names_array[1].split('').map! { |letter| simple_encoder(letter) }

	# Outputs
	puts
	puts "You entered: #{user_name}"
	puts "Your new Secret Spy Alias is: #{names_array[1].join.capitalize} #{names_array[0].join.capitalize}"
	puts
end
























			
			
			

