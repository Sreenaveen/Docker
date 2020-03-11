#!/bin/bash
mkdir -p output
cd output
if [ -f "result.txt" ]
then
	rm "result.txt"
fi
echo "                                                             " > result.txt
echo "The File names are" >> result.txt
cd ../data
wc -w *.txt >> ../output/result.txt

echo "                    " >> ../output/result.txt
total=$(wc -w *.txt | tail -1 | awk '{print $1}')
file_highest=$(wc -w *.txt | sort -nr | head -2 | tail -1)
UID=$(id -u)
ip=$(ip route get 1 | awk '{print $7}')

echo "The Grand total of no. of words: $total" >> ../output/result.txt
echo "                     " >> ../output/result.txt

echo "The File with highest word count is: $file_highest" >> ../output/result.txt
echo "                    " >> ../output/result.txt

echo "The IP Address of the machine: $ip" >> ../output/result.txt
echo "                    " >> ../output/result.txt

echo "The User of the machine is: $(getent passwd $UID | cut -d ":" -f 5)" >> ../output/result.txt

echo "                    " >> ../output/result.txt
echo " Name is : Sree Naveen Venkatachalam" >> ../output/result.txt
echo "                     " >> ../output/result.txt
cd ../output
cat result.txt
