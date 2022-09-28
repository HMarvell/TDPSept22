'use strict'

function subCalc(num1, num2) {
    return num1 - num2;
}

console.log(subCalc(10,12));

const welcome = function(name,age,gender){
    return console.log(`My name is ${name}, I am ${age} years old and ${gender}`);
    }
    welcome("Master Roshi",350,"A Hermit")

   
let num1 = prompt("Please enter first number:");
let num2 = prompt("Please enter second number:");

let num3 = parseInt(num1)
let num4 = parseInt(num2)

   function subCalc2(num3, num4) {
        return num3 - num4;
    }
    function subCalc3(num3, num4) {
        let num5 = (num3 += num4)
        return num5
    }
    function subCalc4(num3, num4) {
        return num3 / num4;
    }
    function subCalc5(num3, num4) {
        return num3 * num4;
    }
    
    console.log(subCalc2(num3,num4));
    console.log(subCalc3(num3,num4));
    console.log(subCalc4(num3,num4));
    console.log(subCalc5(num3,num4));