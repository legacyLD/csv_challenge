const fs = require('fs');
var csvData = [];

fs.readFile('sample/comma.txt', (err, data) => {
  if (err) throw err;
  console.log(data);
  content = csvData.push(data)
  processFile();          // Or put the next step in a function and invoke it
});

function processFile() {
console.log(content);
}

var commaDoc = "Abercrombie, Neil, Male, Tan, 2/13/1943, Bishop, Timothy, Male, Yellow, 4/23/1967, Kelly, Sue, Female, Pink, 7/12/1959";
var pipeDoc = "Smith | Steve | D | M | Red | 3-3-1985 | Bonk | Radek | S | M | Green | 6-3-1975 | Bouillon | Francis | G | M | Blue | 6-3-1975";
var spaceDoc = "Kournikova Anna F F 6-3-1975 Red Hingis Martina M F 4-2-1979 Green Seles Monica H F 12-2-1973 Black";

var joinDoc = commaDoc.split(", ") + pipeDoc.split(" | ") + spaceDoc.split(" ");
console.log(joinDoc);
