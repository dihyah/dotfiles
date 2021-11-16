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

#until-loop
max=5
a=1
b=0

until [[ $a -gt $max || $b -gt $max ]]; do
  echo "a = $((a++)) & b = $((b++))."
done

#string comparison
str1="Hello"
str2="hello"

if [[ -n $str1 || -n $str2 ]]; then
  if [ $str1 \< $str2 ]; then
    echo "$str1 is less then $str2"
  else
    echo "$str1 is not less then $str2"
  fi
else
  echo String is empty.
fi

#string length
str3="Hello, world!"
str3len0=`expr length "$str3"`
str3len1=`expr "$str3" : '.*'`
str3len2=`echo $str3 | wc -c`
str3len3=`echo $str3 |awk '{print length}'`

echo "expr length \"\$str3\":" $str3len1
echo "expr \"$str3\" : '.*':" $str3len2
echo $str3 | wc -c
echo "\$str3 |awk '{print length}':" $str3len3

#string split with IFS variable
read -p "Enter any word seperated by space: " str4 #reading string

IFS=' ' #set space as delimiter(-r for backslash, -a for passing into index)
read -ra ARR<<<"$str4" #reading str as an array as tokens seperated by IFS

for s in "${ARR[@]}"; do #access each element of array
  echo -n "s: $s "
done
echo

#string split without IFS
read -p "Enter any string seperated by space: " str5 #reading string value

readarray -d ' ' strarr<<<"$str5" #split string based on the delimiter ' '

#print each value of array with the help of loop
for (( n=0; n<=${#strarr[*]}; n++ )); do
  echo -n ${strarr[n]}
done
echo

#split string by another string
str6="ThisHereisHereBashHereScript"
delimiter='Here'
s=$str6$delimiter
array=()

while [[ $s ]]; do
  echo $s
  array+=( "${s%%"$delimiter"*}" )
  s=${s#*"$delimiter"}
done
declare -p array

#example to split a string using trim (tr) command
my_str="This;is;bash;script."
my_arr=($(echo -n $my_str | tr ";" "\n"))

for s in "${my_arr[@]}"; do
  echo $s
done

#substring by range
strsub="This is Bash"
echo "Total characters in string: ${#str}"
substr="${strsub:0:10}"
echo "Substring: $substr"
echo "Total characters in substring: ${#substr}"

#substring from ith char and onwards
strsub1="This is Bash"
substr1="${strsub1:8}"
echo $substr1

#substring by single char
strsub2="This is Bash"
substr2="${strsub2:8:1}"
echo $substr2

#substring specific char to last
strsub3="This is Bash substring."
substr3="${strsub3:(7)}"
echo $substr3

#concat strings
read -p "Name: " name
read -p "State: " state
read -p "Age: " age

combine="$name, $state, $age"
echo "Name, State, Age: $combine"

print_it(){
  local my_greet="This is function in Bash."
  echo "$my_greet"
}

my_greet="$(print_it)"
echo $my_greet

#script to override existign commands using function
echo(){
  builtin echo -n `date +"%m-%d %H:%M:%S"` ": "
  builtin echo $1
}

echo "This is Bash."

#arrays
declare -a example_array=( "Ruby" "C" "Python" )
example_array[3]="JavaScript"
example_array+=( "Bash" "Lua" )
unset example_array[4]
length=${#example_array[@]}
sliced_array=("${example_array[@]:1:3}")

echo "${!example_array[@]} ${example_array[@]}"
for (( i=0; i < $length; i++ )); do echo "$i: ${example_array[$i]}"; done
echo ${sliced_array[@]}

data=$(<sort.sh)
echo "$data"

file='sort.sh'

i=1
while read line; do
  echo "Line No. $i: $line"
  i=$((i+1))
done < $file
'

while read -r line; do echo $line; done < sort.sh
