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

def next_vowel(letter)
	
	if letter == 'a'
		letter = "e"
	elsif letter == 'e'
		letter = "i"
	elsif letter == 'i'
		letter = 'o'
	elsif letter == 'o'
		letter = 'u'
	else
		letter = 'a'
	end
end


			
			
			

