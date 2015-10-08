var fs = require('fs');
var obj;
var obj2 = JSON.parse(fs.readFileSync('catalog.json', 'utf8'));

obj = JSON.parse(fs.readFileSync('community-polymer-elements.json', 'utf8'));
obj2.packages.unshift(obj);
obj = JSON.parse(fs.readFileSync('polymer-third-party.json', 'utf8'));
obj2.packages.unshift(obj);
obj = JSON.parse(fs.readFileSync('marcus7777_utilities.json', 'utf8'));
obj2.packages.unshift(obj);
obj = JSON.parse(fs.readFileSync('marcus7777_development.json', 'utf8'));
obj2.packages.unshift(obj);

fs.writeFile('catalog.json', JSON.stringify(obj2, null, 4), 'utf8');
// console.log('add first place - done');
console.log(obj2);
