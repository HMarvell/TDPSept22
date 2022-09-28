'use strict'



fetch('JasonTest.json')
    .then(response => response.json())
    .then(data => console.log(data));