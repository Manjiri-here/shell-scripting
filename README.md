# shell-scripting


Amazing shell script learning resource: https://www.linkedin.com/pulse/how-learn-linux-shell-scripting-devops-darshana-manikkuwadura-dash--d7aqe/?trackingId=q3MjMci1T3iLuFuqP1Hduw%3D%3D

<img width="512" height="372" alt="• Using numeric comparison" src="https://github.com/user-attachments/assets/2925d227-123d-4aca-a81f-bb6d58208098" />
￼


Shell commands, project and notes

1) Shell script file should always be saved with extension '.sh'
2) The first line of file is '#!/bin/bash'. It tells interpreter that from here onwards you have to read the commands and execute it.
3) You execute file using command './ifelse_example.sh' or '$sh ifelse_example.sh'. If we it is not allowing to run this command then it is because the script does not have executable permission. You can change permission using '$chmod 744 ifelse_example.sh'

-----

for n in $(seq 10)
do
  echo -e "\n The number is ${n}"
  date
  sleep 1
done
Step-by-step explanation:
for n in $(seq 10)

seq 10 generates a sequence of numbers from 1 to 10.

$(seq 10) runs that command and substitutes its output into the loop.

So effectively, the loop will run with n = 1, 2, 3, …, 10.

do ... done

This defines the body of the loop.

Everything inside do and done runs once for each number in the sequence.

echo -e "\n The number is ${n}"

Prints the current number.

The -e flag allows special characters like \n (new line).

So it prints a blank line first, then The number is 1, The number is 2, etc.

date

Prints the current system date and time — so you can see when each iteration runs.

sleep 1

Pauses the loop for 1 second before going to the next number.

Without this, all iterations would run instantly.

——

xargs — “Take input and make it arguments to another command”
In simple terms: It reads data from stdin (like output of find, grep, or cat) and runs a command using that data as arguments.
Example:

find /tmp -type f -name "*.log" | xargs rm
Here’s what happens:
* find lists all .log files.
* xargs takes those filenames and passes them to rm in batches.
