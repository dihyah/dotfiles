// Geolocation
body = document.querySelector("body");
//navigator.geolocation.getCurrentPosition(function(position){ 
//    document.querySelector('#geolocation').innerHTML = ('Latitude: ' + position.coords.latitude + ', ' + 'Longitude: ' + position.coords.longitude);
//});

// Accessing HTML index
var heading = document.getElementsByTagName("h1");
console.log(heading[1]);

//greet function by alert
function greet(){
    let name = document.querySelector("#name").value;
        if (name === ''){
            name = "friend";
        } else if (name === "Elliot" || name === "elliot"){
            alert("Goodbye friend.");
            return 1;
        }
    alert("Hello " + name + '.');
}

let friend = document.getElementById('h1');
friend.textContent += " friend.";

var submitName = document.getElementById("submit");
submitName.addEventListener("click", function(){
  var username = document.getElementById("name").value;
  alert("Hello " + username + ".");
});

//ternery operator
function greeting(name){
    name = document.querySelector("#name").value;
    name === '' ? document.querySelector("#hello").innerHTML="Hello, friend." : document.querySelector("#hello").innerText="Hello " + name + '.';
}

//if else statements
function getDay(){
    let day = new Date().getDay();
    //var day = 5;
        if (day === 1){
            alert("It's Monday.");
            return 1;
        }
        else if (day === 2){
            alert("It's Tuesday.");
            return 1;
        }
        else if (day === 3){
            alert("It's Wednesday.");
            return 1;
        }
        else if (day === 4){
            alert("It's Thursday.");
            return 1;
        }
        else if (day === 5){
            alert("It's Friday.");
            return 1;
        }
        else if (day === 6){
            alert("It's Satruday.");
            return 1;
        }
        else if (day === 0){
            alert("It's Sunday.");
            return 1;
        }
        else
            alert(day);
}

//switch statement
function switchDay(){
    let day = new Date().getDay();
    //var day = 9;
    switch(day){
        case 1:
            alert("It's Monday!");
            break;
        case 2:
            alert("It's Tuesday!");
            break;
        case 3:
            alert("It's Wednesday!");
            break;
        case 4:
            alert("It's Thursday!");
            break;
        case 5:
            alert("It's Friday!");
            break;
        case 6:
            alert("It's Saturday!");
            break;
        default:
            alert("It's Sunday!");
            break;
    }
}

// Counter
var counter = 0;
function increment(){
    counter++;
    console.log(counter);
    document.querySelector("#counter").innerHTML = counter;
}

// Change backgroud color
    document.querySelector('#red').onclick = () => {
        body.style.backgroundColor='red';
    }
    document.querySelector('#green').onclick = () => {
        body.style.backgroundColor='green';
    }
    document.querySelector('#blue').onclick = () => {
        body.style.backgroundColor='blue';
    }

// Text sizes
document.querySelector('select').onchange = () => {
    document.querySelector('p').style.fontSize = this.value;
}

// Blink every 500ms
let blink = () => {
    var strong = document.querySelector('strong');
    if (strong.style.visibility === 'hidden'){
        strong.style.visibility = 'visible';
    }
    else{
        strong.style.visibility = 'hidden';
    }
}
window.setInterval(blink, 500);

// Generate random number
function randomNum(){
    var randomnum = Math.round(Math.random() * 11);
    document.getElementById('randomnum').innerHTML = randomnum;
}

// Appending body with url-image
var intro = document.createElement('h1');
intro.innerHTML = "Leaves and mushrooms, yo!";
body.appendChild(intro);

var container = document.createElement('div');
container.setAttribute('class', 'container-fluid');
var row = document.createElement('div');
row.setAttribute('class', 'row');
var col = document.createElement('div');
col.setAttribute('class', 'col-sm-12');
var frame =  document.createElement('img');
frame.setAttribute('class', 'img-fluid');
frame.setAttribute('src', 'https://images.unsplash.com/photo-1616169775818-9f7115b8821e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNDU4OXwwfDF8cmFuZG9tfHx8fHx8fHx8MTYxODQ1NDYxMg&ixlib=rb-1.2.1&q=80&w=400')

col.appendChild(frame), row.appendChild(col), container.appendChild(row), body.appendChild(container);

// Compares two variables
var variable1 = 10;
var variable2 = "ten";

p = document.createElement('p');
res = document.createTextNode(`The sameness of ${variable1} and \"${variable2}\" is ${variable1 === variable2}.`);
p.appendChild(res);
body.appendChild(p);
p.style.paddingTop = '2%';
