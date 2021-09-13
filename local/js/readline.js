const readline = require('readline')

const rl = readline.createInterface(process.stdin, process.stdout)

let num1 = Math.floor((Math.random() * 10 ) + 1)
let num2 = Math.floor((Math.random() * 10 ) + 1)

let ans = num1 + num2

rl.question(`What is ${num1} + ${num2}? `, input => {
    if (input.trim() == ans) {
        console.log("Correct")
        rl.close()
    }
    else {
        rl.setPrompt("Oops, try again.\n >_ ")
        rl.prompt()
        rl.on('line', input => {
            if (input.trim() == ans) {
                console.log("Correct! ")
                rl.close()
            } else {
                rl.setPrompt(`Your answer of \'${input}\' is incorrect. Please try again.\n >_ `)
                rl.prompt()
            }})
    }
})

rl.on('close', () => {
    console.log("Program ended.")
    process.exit(0)
})
