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




def encrypt(string)
	
	string = string.delete(' ')
	index = 0
	
	while index < string.length

		string[index] = string[index].next!
		print string[index]
		index += 1
	end
	puts

	
	
end

encrypt('abc ')
encrypt('zed')



