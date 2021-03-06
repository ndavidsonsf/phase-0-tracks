// Release 0 - PsuedoCode
// define a FUNCTION that takes in an ARRAY of strings
// initialize a variable to hold the longest string when it's found
// iterate over all the strings in the array
// use conditional logic to evaluate whether the current string
// 	is the longest, repeat until through items in array
// return the longest string

// Release 1 - PsuedoCode
// define a FUNCTION that takes two OBJECTS
// Use a loop to iterate over each of the KEY-VALUE pairs and
// evaluate if they have the same value; return TRUE if they do
// otherwise false

// Release 2 - PsuedoCode
// define a FUNCTION that take an INT
// 	initializes an array
// 	and for the INT adds random strings (words) by calling
//	another FUNCTION that creates them
// define a FUNCTION that makes random words
//	initialize word STRING'
// 	initialize random INT
//		.random makes random number between 0 and 1
//		.floor rounds down
//		multiply 10 and add 1 to get a random number between 0 and 1 (had to google)
//	initialize a string of most common letters
// 	iterate through most common letters at random, adding them to the word STRING
// return the word STRING


function longestStringFinder(strings) {
	// variable to hold the longest string
	var longestString = '';
	
	// iteration over the array
	for (var j = 0; j < strings.length; j++) {
		// conditional logic to check length of each element
		// and store it as the longest string
		if (longestString.length < strings[j].length) {
			longestString = strings[j];
		}
	}
	return longestString;
}

function samePairs(obj1, obj2) {
	var doesShare = false;
	for (var key in obj1) {
		if (obj1[key] == obj2[key]) {
			doesShare = true;
		};
	};
	return doesShare;
}

function makesArray(num) {
	var words = [];
	for (var i = 0; i < num; i++) {
		words.push(makesWord());

	};
	return words;
}

function makesWord() {
	var randNum = Math.floor((Math.random() * 10) + 1);
	var word = '';
	var alphabet = "abcdefghijklmnoprstuy";

	for (var j = 0; j < randNum; j++) {
		word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
	}
	return word;
}




// Drive Code


// Drive Code - Release 0
var groupOfStrings = longestStringFinder(["long phrase","longest phrase","longer phrase"]);
console.log(groupOfStrings);

var anotherGroupOfStrings = longestStringFinder(["Apple","Mangos","Peaches"]);
console.log(anotherGroupOfStrings);

// Drive Code - Release 1
var example = samePairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(example);
var cars = samePairs({make: "BMW", color: "black"}, {make: "Mercedes-Benz", color: "black"});
console.log(cars);
var cars2 = samePairs({make: "BMW", color: "red"}, {make: "Mercedes-Benz", color: "black"});
console.log(cars2);

// Drive Code - Release 2


// Creates 10 arrays of random lengths, with random words and returns the longest word from each
for (var n = 0; n < 10; n++) {
	console.log(longestStringFinder(makesArray(Math.floor(Math.random() * 10) + 1)));
};









