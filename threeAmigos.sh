#!/bin/bash
#The following Bash Script adds the first 3 numbers and assigns this sum to the first argument needed for the subtractMachine.sh bash script and the 4th argument for the following bash script is what is being subtracted from the sum of the 3 numbers in the subtractMachine.sh script

#Example Invocation: ./threeAmigos.sh Num1 Num2 Num3 Num4

echo "Firs three numbers for script are: $1 $2 $3"
sum=$(($1+$2+$3))
echo "sum of 3 numbers is: $sum"
echo "Number being subtracted: $4"

./subtractMachine.sh $sum $4

