'use strict'

let strictA = true;
let strictB = 1;

console.log(strictA == strictB);
console.log(strictA === strictB);

console.log(strictA != strictB);
console.log(strictA !== strictB);

let age = 66;

if (age >= 18 && age <= 65) {
  console.log("Over 18");
} else if (age < 18) {
  console.log("Under 18");
} else {
  console.log("Pensioner");
}

let age1 = 40;
let Agename = age1 >= 50 ? "50 or over" : "Under 50";
console.log(Agename);