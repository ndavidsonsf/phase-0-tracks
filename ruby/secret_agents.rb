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
	
	# set index, string for index, and empty string
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	message = ""
	
	# while loop for interation through length of string
	while index < string.length
		character = string[index]
		# conditionals for blank spaces and edge cases
		if character == " "
			message << " "
		elsif character == "z"
			message << "a"
		else
			character = alphabet[character].next!
			message << character
		end
		index += 1
	end
	puts message
end

# decryption method
def decrypt(string)

	# set index and string for index
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	message = ""

	# while loop for interation through length of string
	while index < string.length
		character = string[index]

		# conditional for blank space
		if character == " "
			message << " "
		else
			previous_char_index = alphabet.index(character) - 1
			message << alphabet[previous_char_index]
		end

		index += 1
	end
	puts message
end




encrypt('abc ') # this one includes a space for debugging purposes
encrypt('zed')
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish")) # this doesn't work and I am not sure why so I can't add a comment explaining why it works



