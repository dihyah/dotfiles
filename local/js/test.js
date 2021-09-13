const readline = require('readline')

const rl = readline.createInterface(process.stdin, process.stdout)

rl.question("whoareyou? ", name => {
    if (name == "") {
        rl.setPrompt("Asked again: whoareyou? ")
        rl.prompt()
        rl.on('line', name => {
            if (name.trim() != "") {
                console.log(`Understood, username: ${name}`)
                rl.close()
            } else{
                rl.setPrompt("Asked again: whoareyou? ")
                rl.prompt()
            }
        })
    } else {
        console.log(`Understood, username: ${name}`)
        rl.close()
    }
})

rl.on('SIGINT', () => {
    rl.question("Are you sure you want to exit?(y/N) ", answer => {
        if (answer.match(/^y(es)?$/i)) rl.pause()
    })
})

rl.on('close', () => {
    console.log("Exiting program")
    process.exit(0)
})
