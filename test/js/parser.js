// Load the fs (filesystem) module
var fs = require('fs');

// Read file
fs.readFile('example_log.txt', function (err, data) {
  if (err) throw err;
  var text = data.toString();
    
var results = {};

// Break up the file into lines.
var lines = text.split('\n');

lines.forEach(function(line) {
  var parts = line.split(' ');
  var letter = parts[1];
  var count = parseInt(parts[2]);

  if(!results[letter]) {
        results[letter] = 0;
      }

  results[letter] += parseInt(count);
    });

console.log(results);
  // { A: 2, B: 14, C: 6 }
});
