'use strict'

let person = () => {
    let name = "Keanu";
    return {
      getName: function () {
        return name;
      },
      setName: function (newName) {
        name = newName;
      },
    };
  }
  let personA = person();
  console.log(personA.getName());
  personA.setName("Reeves");
  console.log(personA.getName());


let changeCount = () => {
    let counter = 100;
    let x = 1
    return {
      increment: function () {
        counter += x;
      },
      decrement: function () {
        counter -= (x+1);
      },
      value: function () {
        return counter;
      },
    };
  }
  let count = changeCount();
  console.log(count.value());
  count.increment();
  console.log(count.value());
  count.decrement();
  console.log(count.value());