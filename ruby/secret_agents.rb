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
	index = 0
	while index < string.length
		string[index] = string[index].next!
		puts string[index]
		index += 1
	end
end

encrypt('abc')

