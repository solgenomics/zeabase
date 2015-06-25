acc1=(`tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv | awk -F"//" '{print $1}'`)
#echo "$acc1"
echo ${#acc1[@]} 

# >> single_trial_3WHYB-2010-15-1_accession.txt

acc2=(`tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv | awk -F"//" '{print $2}'| awk -F"/" '{print $1}' |sort -u`)
#acc1=(${acc1[@]} ${acc2[@]})

# ${arrA[@]} 
echo ${#acc2[@]}


#echo ${#acc1[@]} 

acc3=(`tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv | awk -F"//" '{print $2}'| awk -F"/" '{print $2}' |sort -u`)
#echo "${#acc3[@]}"
#acc1=(${acc1[@]} ${acc3[@]})
echo ${#acc3[@]}


<<COMMENTS
acc_tester=tester_${acc2[$1]}_${acc3[$1]}

cnt=${#acc1[@]}

#echo cnt

#echo "____________"
#echo "Array arrayX"
#echo "____________"

#acc_with_tester=()
for (( i = 0 ; i < cnt ; i++ ))
do
#echo "Element [$i]: ${acc1[$i]}"

#grep / ${acc1[$i]}
if echo ${acc1[$i]} | grep -qi '/'
then
echo "Element [$i]: ${acc1[$i]}_"$acc_tester""
acc_with_tester[$i]=${acc1[$i]}_"$acc_tester"
fi

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done

echo ${#acc_with_tester[@]}

acc=(${acc1[@]} "$acc_tester" ${acc2[@]} ${acc3[@]} ${acc_with_tester[@]})


echo ${#acc[@]}

echo "accession_name" > single_trial_3WHYB-2010-15-1_accession.txt

for (( i = 0 ; i < ${#acc[@]} ; i++ ))
do
#echo "Element [$i]: ${acc1[$i]}"


echo "Element [$i]: ${acc[$i]}"
echo "${acc[$i]}" >> single_trial_3WHYB-2010-15-1_accession.txt

#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done

ped_acc=("$acc_tester" ${acc_with_tester[@]})

ped1=${acc2[$1]}//${acc3[$1]}


#ped2=(`tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv`)


for (( i = 0 ; i < ${#acc1[@]} ; i++ ))
do
#echo "Element [$i]: ${acc1[$i]}"


#echo "Element [$i]: ${acc[$i]}"

if echo ${acc1[$i]} | grep -qi '/'
then
#echo -e "${ped_acc[$i]}\t${ped[$i]}" >> single_trial_3WHYB-2010-15-1_pedigree.txt
ped2[$i]=${acc1[$i]}//tester_${acc2[$1]}_${acc3[$1]}
fi


#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done


ped=($ped1 ${ped2[@]})

echo -e "accession_name\tpedigree" > single_trial_3WHYB-2010-15-1_pedigree.txt

for (( i = 0 ; i < ${#ped[@]} ; i++ ))
do
#echo "Element [$i]: ${acc1[$i]}"


#echo "Element [$i]: ${acc[$i]}"

if echo ${ped_acc[$i]} | grep -qi 'tester'
then
echo -e "${ped_acc[$i]}\t${ped[$i]}" >> single_trial_3WHYB-2010-15-1_pedigree.txt
fi
#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > single_trial_3WHYB-2010-15-1.cvsmetadata

project_name=`tail -n +3 single_trial_3WHYB-2010-15-1.csv | cut -f4 | sort -u`
project_description="$project_name"
geo_description=`tail -n +3 single_trial_3WHYB-2010-15-1.csv | cut -f11 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
planting_date=`tail -n +3 single_trial_3WHYB-2010-15-1.csv | cut -f14 | sort -u`
fertilizer_date=""
year=`tail -n +3 single_trial_3WHYB-2010-15-1.csv | cut -f3 | sort -u`
address=""

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> single_trial_3WHYB-2010-15-1.cvsmetadata

#single_trial_3WHYB-2010-15-1_rep1_1.csv 
#single_trial_3WHYB-2010-15-1_rep1_2.csv
COMMENTS

for (( i = 0 ; i < ${#acc1[@]} ; i++ ))
do
#echo "Element [$i]: ${acc1[$i]}"


#echo "Element [$i]: ${acc[$i]}"

if echo ${acc1[$i]} | grep -qi '/'
then
#echo -e "${ped_acc[$i]}\t${ped[$i]}" >> single_trial_3WHYB-2010-15-1_pedigree.txt
DESIG[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}
else
DESIG[$i]=${acc1[$i]}
fi

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done

DESIG2=("DESIG" "DESIG" ${DESIG[@]})

rm single_trial_3WHYB-2010-15-1_DESIG.txt
for (( i = 0 ; i < ${#DESIG2[@]} ; i++ ))
do
echo "Element [$i]: ${DESIG2[$i]}"

#echo "Element [$i]: ${acc[$i]}"
echo "${DESIG2[$i]}" >> single_trial_3WHYB-2010-15-1_DESIG.txt

#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done




cut -f7,8,6,5,17-55,4 single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated.csv

awk -v OFS="\t" -F"\t" '{print $7,$8,$6,$5}' single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated1.csv
cut -f17-55 single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated2.csv
awk -v OFS="\t" -F"\t" '{print $4}' single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated3.csv

paste single_trial_3WHYB-2010-15-1_rep1_1_reformated1.csv single_trial_3WHYB-2010-15-1_DESIG.txt single_trial_3WHYB-2010-15-1_rep1_1_reformated2.csv single_trial_3WHYB-2010-15-1_rep1_1_reformated3.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013.csv
#COMMENTS2

#echo ${acc[@]} >  single_trial_3WHYB-2010-15-1_accession.txt


#EntryNumber	Replication	Block	Plot

sed 's/EntryNumber/ENTRY/g' single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_1.csv
sed 's/Replication/REP/g' single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_2.csv
sed 's/Block/BLOCK/g' single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_2.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_3.csv
sed 's/Plot/PLOT/g' single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_3.csv > single_trial_3WHYB-2010-15-1_rep1_1_reformated_12_30_2013_4.csv



