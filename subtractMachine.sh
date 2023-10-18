#!/bin/bash
#The following bash script performs subtraction, prints the difference, and counts down from the difference to 1.

#Example invocation: ./subtractMachine.sh LargerNum SmallerNum

chmod u+rwx subtractMachine.sh
chmod o+rx subtractMachine.sh

echo "The larger number: $1"
echo "The smaller number: $2"
result=$(($1-$2))
echo "The difference is: $result"
counter=$result
zerovar=0
while [ $counter -gt $zerovar ] #while counter = 8 is greaterthan 0  (the largest number) 
do
	echo "Count Down = $counter" #print countdown = counter
	((counter--)) #decrement counter variable
done
