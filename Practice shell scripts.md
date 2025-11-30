Shell script to add two numbers

**Script 1**

echo "Enter number 1:"
read num1
echo "Enter number 2:"
read num2
echo "Addition of $num1 and $num2 is $(($num1 + $num2))"

**Script 2** : Here we need to give input while executing the command itself for eg: ./24Nov.sh 5 5

c=$(($1 + $2))

echo "Addition of given numbers is $c"

Note: Also there should be no space between c and + and ( on line 13 otherwise we get error: 
MacBook-Pro shell-scripting % ./24nov.sh
./24nov.sh: line 13: + : syntax error: operand expected (error token is " ")
Addition of given numbers is

**Write shel script to install the essesntail packages for devops setup: like docker, terraform, git (check if it is not doesnt already exist) prometheus, grafana, kubectl , eksctl and also how can we write this script to implement on remote machine , so this installations can also be done on remote machines, install promethes , grafana, node exporter, app exporter, blackbox exporter **

1) For loop and if loop:

for i in $(seq 1 99)
do
 if (( i % 2 != 0))
 then
  echo $i 
 fi
done

2) Write a Bash script which accepts name as input and displays the greeting "Welcome (name)"

echo "Please enter your name:"
read name
echo "Welcome $name"

3) Use a for loop to display the natural numbers from 1 to 50.

for i in $(seq 1 50)
do
 echo $i
done

4) To compare two numbers using if operator:

Note: Bash script requires space between [ and $x strictly, otherwise it is syntactically wrong

read X
read Y

if [ $X -gt $Y ]; then
 echo "X is greater than Y"
elif [ $X -lt $Y ]; then
 echo "X is less than Y"
else
 echo "X is equal to Y"
fi

----
29 November 2025

----

What <<EOF ... EOF REALLY is : This is called a Heredoc (Here Document) -> “Everything between <<EOF and the final EOF will be sent as input to the command on the left (tee).”
