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

#for-loops
for i in {1..50..2}; do
  if [[ $i -gt 10 && $i -lt 40 ]]; then
    continue
  fi
  echo -n $i' '
done
echo

j=1;
for ((;;)); do
  echo "Current number: $((j++))"
  sleep 1
  if [[ $j -eq 10 ]]; then
    break
  fi
done

#while-loops
read -p "Enter starting number: " begin
read -p "Enter ending number: " end

while [[ $begin -lt $end || $begin -eq $end ]]; do
  echo -n $((begin++))' '
  sleep 1
done
echo ", Completed."

while :; do
  echo "This is Bash."
  sleep 1
done
'

echo Countdown for website deployment...
k=10
while [ $k -ge 1 ]; do
  if [ $k -eq 2 ]; then
    echo Mission aborted, some technical error found.
    break
  fi
  echo -n $(( k-- ))' '
  sleep 1
done
