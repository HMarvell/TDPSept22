'use strict'

console.log("Hello world!");

const text = "this is a message";

console.log(text);

console.info(text);

console.dir(text);

console.warn(text);

console.error(text);

console.log("%c " + text,"color: white; background-color: black; font-size: 40px; padding: 5px;");

console.log("%c" + text + "%c" + text, "color:blue;", "color:red;");
