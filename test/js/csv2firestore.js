// Read CSV file data and push towards Firebase Firestore
// Import modules
const process = require('process')
const argv = process.argv
const fs = require('fs')
const path = require('path')

// Initialize db
const admin = require('firebase-admin')
const serviceAccount = require('./config.json')
admin.initializeApp({ credential: admin.credential.cert(serviceAccount) })
const db = admin.firestore()

// Check the number of arguments
if (argv.length != 3) console.log("Usage: node migrate.js path.csv")
else {
  const extname = path.extname(argv[2])

  // Check if file is in csv format
  if (extname != '.csv') console.log("Argument isn't a file\/CSV format.") 
  else fs.readFile(argv[2], 'utf8', (err, data) => {

    if (err) return console.log(err)
    else {
      // Splits data by newline
      rows = data.split('\n')

      let newData = []

      // Further split data by comma
      rows.forEach((row) => newData.push(row.split(',')))
      console.log(newData)

      // Assign key as header
      let key = newData[0]

      // Create empty array to be pushed as new format
      let tmpArr = []

      // Assign key and value accordingly and push to tmpArr
      for (var i = 1; i < newData.length; i++) {
        let tmpObj = {}

        newData[i].forEach((val, index) => tmpObj[key[index]] = val)
        tmpArr.push(tmpObj)
      }

      // Create multi dimensional array
      let transposeArray = array => {
        var newArray = [];

        for(var i = 0; i < array.length; i++) newArray.push([])

        for(var i = 1; i < array.length; i++){
          for(var j = 0; j < array[0].length; j++) 
            newArray[i].push(array[i][j])
        }
        newArray.shift()
        return newArray
      }
      
      newData = transposeArray(newData)

      //db.collection('test').add({

        for (var i = 0; i < key.length; i++) {
          for (var j = 0; j < newData.length; j++){
            console.log(`${key[i]}: ${newData[j][i]}`)
          }
        }

      //})

    } // End of file read
  })
}


