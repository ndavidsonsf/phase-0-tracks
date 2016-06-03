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
interface
- create menu (1. Encrypt, 2. Decrypt 3. exit)
- use a while loop to loop program until user exits
- gather user input
- execute appropriate method

=end


# Method Declarations

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
	puts
	puts "-----------------------------------------"
	puts "              -RESULTS-"
	puts
	puts "Your encrypted password is: #{message}."
	puts "-----------------------------------------"
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
	puts
	puts "-----------------------------------------"
	puts "              -RESULTS-"
	puts
	puts "Your decrypted password is: #{message}." 
	puts "-----------------------------------------"
end



# Driver Code

puts "-----------------------------------------------"
puts "            The Encyrption Program"
puts "-----------------------------------------------"
puts "                  -Main Menu-"
puts "Please select: "
puts "      1. Encyrption"
puts "      2. Decryption"
useroption = gets.chomp
	if useroption == "1"
		print "Enter password to encrypt: "
		string = gets.chomp
		encrypt(string)
	elsif useroption == "2"
		print "Enter password to decrypt: "
		string = gets.chomp
		decrypt(string)
	else
		exit
	end






=begin
encrypt('abc ') # this one includes a space for debugging purposes
encrypt('zed')
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish")) # this doesn't work and I am not sure why so I can't add a comment explaining why it works

=end

