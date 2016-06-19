var horseColors = ['blue', 'red', 'brown', 'grey'];
var horseNames = ['Joey', 'Blue Dog', 'Drummer', 'Reina'];

// Before the addition
console.log(horseColors);
console.log(horseNames);

horseColors.push('white');
horseNames.push('Mr. Ed');

// After the addition
console.log(horseColors);
console.log(horseNames);

// create a new object
// use horse name as keys and colors as values
// as long as arrays are the same length

function horsePair(name_array, color_array) {
  var horses = {}
  for (var i = 0; i < horseNames.length; i ++) {
    horses[horseNames[i]] = horseColors[i];
  };
   return horses;
};
           
console.log(horsePair(horseNames, horseColors));


function Car(make, model, year, color) {
  
  this.make = make;
  this.model = model;
  this.year = year;
  this.color = color;
  
  this.lockDoors = function() {
    console.log("Doors locked.");
  };
  
  this.unlockDoors = function() {
    console.log("Doors unlocked.");
  };

};

var car1 = new Car('BMW', '435ix', 2017, 'space grey');
console.log(car1);
car1.lockDoors();

var car2 = new Car('Ford', 'Fusion', 2014, 'black');
console.log(car2);
car2.unlockDoors();


// Research
for (var key in car1) {
    console.log("The key, " + key + ", is " + car1[key]);
}