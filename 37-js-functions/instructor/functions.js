// Basics

// Write a function that takes someone's order

// Call the function
function takeOrder(food) {
  console.log("You've ordered " + food + ".");
}
var func = takeOrder;

takeOrder('burger');

func('pizza');


// items.each do |item|
//   puts "The item is #{item}."
// end

var items = ['hat', 'gloves', 'watch'];


function printItem(item) {
  console.log("The item is " + item + ".");
}

var func = printItem;

// printItem('laser');
items.forEach(printItem);
items.forEach(function(item) {
  console.log("The item is " + item + ".");
});


// function forEach(func) {
//   for (var i = 0; i < this.length; i++) {
//     var currentValue = this[i];
//     func(currentValue);
//   }
// }


var person = {
  name: 'Daniel',
  age: 31,
  talk: function(targetPerson) {
    console.log("Hello " + targetPerson + "! I'm " + this.name + "!");
    console.log(this);
  },
};

console.log(person);
person.talk('Sarah');


function breatheFire() {
  console.log('Firrreeeee');
  console.log(' - ' + breatheFire.source);
}

breatheFire();
console.log(breatheFire);

breatheFire.source = 'Dragon';
console.log(breatheFire);
console.log(breatheFire.source);

breatheFire();





// Questions:

// Can we assign a function to a variable?

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?
