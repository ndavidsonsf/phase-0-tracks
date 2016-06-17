/*
Pseudo code:
- take a string
- reverse the letters of the string
	- pass the string through a function
	- loop over each letter
	- assign each letter to a new word variable
	- return new word
print new word to console
*/

function backwards(string) {
	var backwardsString = "";
	for (var i = string.length - 1; i >= 0; i--) {
		backwardsString += string[i];
	}
	return backwardsString;
	
}

console.log(backwards("Nicholas Davidson"));
console.log(backwards("DevBootcamp"));

if (1 == 1) {
	console.log(backwards("This is true!"));
}




