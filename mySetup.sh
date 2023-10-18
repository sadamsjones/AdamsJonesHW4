#The following program sets the frequency of the BBB, creates a variety of variables and assigns them values. It also exports file content into another file with certain permissions.#It does this using the cpufreq command, echo command, cat command, and chmod command to asjust the freq, write to variables, send  to files, and adjust permissions.

#Example of invocation: ./mySetup.sh

#!/bin/bashcpufreq-info
sudo cpufreq-set -f 600
# cpufreq info
location=/home/debian
echo $location
items=$(ls $location| wc -l)
PATH=$PATH:$location/mySetup.sh
export PATH
cat mySetup.sh >> newPathValue.txt
chmod o+x newPathValue.txt
chmod u+rwx mySetup.sh
echo "Script Ran Succesfully"
