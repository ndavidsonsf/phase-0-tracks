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

def simple_encoder(letter)
	vowels = ['a', 'e', 'i', 'o', 'u']
	if vowels.include?(letter)
		v_index = vowels.index(letter)
		if v_index == 4
			return 'a'
		end
		vowels[v_index + 1]
	else
		if letter == 'z'
			return 'b'
		end
		next_letter = letter.next
		if vowels.include?(next_letter)
			return next_letter.next
		end
		return next_letter
	end
end

first_name = []
last_name = []

puts "--------------------------------------------------"
puts "DBC Alias Manager".center(50)
puts "--------------------------------------------------"
puts
print "Enter your name: "

user_name = gets.chomp
user_name_lower = user_name.downcase
names_array = user_name_lower.split(' ')



names_array[0] = names_array[0].split('').map! { |letter| simple_encoder(letter) }
names_array[1] = names_array[1].split('').map! { |letter| simple_encoder(letter) }

puts
puts "You entered: #{user_name}."
puts "Your new Secret Spy Alias is: #{names_array[1].join.capitalize} #{names_array[0].join.capitalize}"

























			
			
			

