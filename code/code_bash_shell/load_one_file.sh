#!/bin/bash 

#n=`wc -l metadata_rep1_rep2_109.txt` 

#echo "$n"

#for i in {3..109}
#do
#    echo "output: $i"
#done

#COUNTER=0
#while [  $COUNTER -lt 10 ]; do
#echo The counter is $COUNTER
#COUNTER=COUNTER+1 
#done
         
#n=109

#for ((  i = 3 ;  i <= 109;  i++  ))
#do
#  echo "$i"
#  sed -n -e"$i","$i"p metadata_rep1_rep2_109.txt > metadata_rep1_rep2_one_file.txt

#  ~/code/change_name_and_loading_data.sh metadata_rep1_rep2_one_file.txt
#done

#for (( i=1; i <= 5; i++ ))
#do
# echo "Random number $i: $RANDOM"
#done

for ((  i = 1 ;  i <= 24;  i++  ))
do
  echo "$i"
  sed -n -e"$i","$i"p 3_files_to_loading3.txt  > metadata_rep1_rep2_one_file.txt

  ~/code/change_name_and_loading_data.sh metadata_rep1_rep2_one_file.txt
done