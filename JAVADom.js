"use strict";

const title = document.createElement("h1");

title.innerText = "Let's manipulate the DOM";

document.body.appendChild(title);

const div = document.getElementById("myDiv");

console.log("target div:", div);

const newButton = document.createElement("button");
newButton.innerText = "PRESS ME";

div.prepend(newButton);



const secondDiv = document.querySelector("body > div.divNoId");

console.log(secondDiv);

const para = document.querySelector("body > div.divNoId > p");
para.innerText = "Hello";

para

const greet = () => console.log("Hello World!");

newButton.onclick = greet;
newButton.addEventListener("click",greet);