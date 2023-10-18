#The following bash script takes 4 arguments and based on the inputs creates 2 directories, a text file, and a link to the 2nd directory.

#!/bin/bash
chmod u+rwx simpleAdmin.sh
chmod o+rx simpleAdmin.sh

#./simpleAdmin.sh dir1 dir2 message.txt linkName

echo "dir1 name is:  $1"
#dir1=/home/debian/simpleAdmin.sh #store bash path inside a vairable
mkdir /home/debian/dir1
echo "Creating a directory named $1 ... done!"

echo "dir2 name is: $2";
dir2=$2;
mkdir /home/debian/dir1/dir2
echo "Creating a directory named $2 ... done!"

echo "Text file name is: $3";
message=$3;
touch "Hello World!" >> message
echo "Creating a text file named $3.txt ... done!"

touch /home/debian/dir1/dir2/"$3.txt"
echo "Moving $3.txt to dir1/dir2 ... done!"

ln -s /home/debian /home/debian/dir1/$4
echo "Creating a link from working directory to $2 ... done!"


