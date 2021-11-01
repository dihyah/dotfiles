function sum(a, b) {
    console.log(a + b)
}

let sum1 = (a, b) => console.log(a + b)

function isPositive(number) {
    console.log(number >= 0)
}

let isPositive1 = number => console.log(number >= 0)

function randomNumber() {
    console.log(Math.random() * 11)
}

let randomNumber1 = () => console.log(Math.ceil(Math.random() * 11))
randomNumber1()

class Person {
    constructor(name) {
        this.name = name
    }

    printNameArrow() {
        setTimeout(() => {
            console.log('Arrow: ' + this.name)
        }, 100)
    }

    printNameFunction() {
        setTimeout(function() {
            console.log('Function: ' + this.name)
        }, 100)
    }
}

let person = new Person('Bob')
person.printNameArrow()
person.printNameFunction()

let meta = (output) => console.log(this);
/*
document.addEventListener('click', function() {
    console.log('Click')
})

document.addEventListener('click', () => console.log('Click'))
*/
