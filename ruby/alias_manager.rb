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
		vowels[v_index + 1]
	else
		next_letter = letter.next
		if vowels.include?(next_xyz)
			return letter_xyz.next
		end
		return letter_xyz
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
user_name = user_name.downcase
names_array = user_name.split(' ')



names_array[0] = names_array[0].split('').map! { |letter| simple_encoder(letter) }
names_array[1] = names_array[1].split('').map! { |letter| simple_encoder(letter) }












=begin
names_array.each_index do | index |
	names_array[index].map! { |letter| letter.next }

end
=end
p names_array

























			
			
			

