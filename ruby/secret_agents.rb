=begin
psuedo code: 
encryption
- determine length of string
- for each letter in the string, advance one letter
- display new letters
decryption
- determine length of string
- for each letter in the string, go back one letter in the alphabet using the reverse index
- display new letters

=end



# encryption method
def encrypt(string)
	
	# set index and string for index
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	
	# while loop for interation through length of string
	while index < string.length
		character = string[index]
		# conditionals for blank spaces
		if character == " "
			print " "
			index += 1
		else
			character = alphabet[character].next!
			print character
			index += 1
		end
	end
	puts # adds spacing
end

# decryption method
def decrypt(string)

	# set index and string for index
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	# while loop for interation through length of string
	while index < string.length
		character = string[index]

		# conditional for blank space
		if character == " "
			print " "
			index += 1
		else
			og_char_index = alphabet.index(character)
			previous_char_index = og_char_index - 1
			prev_char = alphabet[previous_char_index]
			print prev_char
			index += 1
		end
	end
	puts # adds spacing
end




encrypt('abc ')
encrypt('zed')
decrypt("bcd")
decrypt("afe")



