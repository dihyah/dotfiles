#!/bin/bash

: '
#sleep interval
date +"%H:%M:%S"
echo "wait for 3 seconds"
sleep 3
date +"%H:%M:%S"
echo "Task Completed"

#arithmetic operators
x=8
y=2
echo "x=8, y=2"
echo "Addition of x & y: $(($x + $y))"
echo "Subtraction of x & y: $(($x - $y))"
echo "Multiplication x & y: $(($x * $y))"
echo "Division x by y: $(($x / $y))"
echo "Exponention x,y: $(($x ** $y))"
echo "Modular division of x,y: $(($x % $y))"
echo "Incrementing x by y: $((x += y))"
echo "Decrementing x by y: $((x -= y))"
echo "Multiply x by y: $((x *= y))"
echo "Dividing x by y: $((x /= y))"
echo "Remainder of dividing x by y: $((x %= y))"

#basic arithmatic using expr
echo "a=10, b=3"
echo "c is the value of addition c=a+b"
a=10
b=3
echo "c = `expr $a + $b`"

#if-else statement
read -p "Number: " number

if [ $number -gt 0 ]; then
  echo "Positive number"
elif [ $number -lt 0 ];
then
  echo "Negative number"
else
  echo "Number is 0"
fi

#case expression
echo "Which Operating System are you using?"
echo "Windows, Android, Chrome, Linux, Others?"
read -p "Type your OS Name:" OS

case $OS in
    Windows|windows)
        echo "That's common. You should try something new."
        ;;
    Android|android)
        echo "This is my favorite. It has lots of applications."
        ;;
    Chrome|chrome)
        echo "Cool!!! It's for pro users. Amazing Choice."
        ;;
    Linux|linux)
        echo "You might be serious about security!!"
        ;;
    *)
        echo "Sounds interesting. I will try that."
        ;;
esac
'

#for-loop
for i in {1..10..2}; do
  echo -n $i' '
done
echo
