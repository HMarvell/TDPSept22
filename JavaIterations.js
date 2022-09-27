'use strict'


let i = 2;
while(i<=6) {
    console.log(i+1);
    i = i + 2;
}

let a = 100;
while (a <= 200) {
  a++;
  console.log(`a = ${a}`);
}

for (let h = 0; h < 10; h++) {
    for (let m = 1; m <= 10; m++) {
      console.log(m);
    }
 }  

 let b = 100;
while (b <= 200) {
  if (b % 2 == 0) {
    console.log("-");
  } else {
    console.log("*");
  }
  b++;
}

for (let c = 100; c <= 200; c++) {
    console.log(`a = ${c}`);
  }

  let now = new Date(); 
let day = now.getDay();
switch (day) {
  case 0:
    console.log(`It's Sunday`);
    break;
  case 1:
    console.log(`It's Monday`);
    break;
  case 2:
    console.log(`It's Tuesday`);
    break;
  case 3:
    console.log(`It's Wednesday`);
    break;
  case 4:
    console.log(`It's Thursday`);
    break;
  case 5:
    console.log(`It's a Friday`);
    break;
    case 6:
        console.log(`It's Saturday`);
        break;    
  default:
    console.log(`No Valid Date`);
    break;
}