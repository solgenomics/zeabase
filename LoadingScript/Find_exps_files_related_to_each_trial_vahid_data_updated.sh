#~/code/code_bash_shell/Find_exps_files_related_to_each_trial_vahid_data_updated.sh unique_trial_name_153.txt

while read line; do

ut=`echo "$line"`
echo "$ut"

flist=()

while read line; do

f=`echo "$line"`
#echo "$f"

#    c=(`echo "$line" | grep -b -o single_trial_ |cut -d":" -f1`)
#    nc=`echo ${c[0]}`
#    ncc=`expr "$nc"+13`
#    echo "$ncc"

     d=(`echo "$line" | grep -b -o _rep |cut -d":" -f1`)
     nd=`echo ${d[0]}`
 #    echo "$nd"   

     ff=`echo "$line"|cut -c14-$nd`
#     echo "$ff" 

#    nd=`expr ${#d[@]}-1`
#    ndd=`echo ${d[nd]}`

if [ "$ut" == "$ff" ]
then
flist=("${flist[@]}" "$f")
#echo "$f"
fi  
#"${Unix[@]}"
# 	              echo -e "$pedigreepart1\t$pedigreepart2"

#378_epr_files_sorted.txt

#echo "$f" | grep -c all_380_files4exp.txt
#f11=`expr '"'"$f1"'"'`

#`expr "$f1" : '.*_\(.*\)_'`
#`expr "$f1" : '.*_\(.*\)_'`

#echo "$f11" 

#pn="$f1"
#grep -c "S2-LINE TRIAL-1-1" all_380_files4exp.txt

#grep -c "$f" 378_epr_files_sorted.txt
#grep -c "$f" all_380_files4exp_2.txt
#grep "$f" 378_epr_files_sorted.txt

#grep -c "$f" test2.txt
#grep -c "$f" test3.txt
#grep -c '$f' test.txt

#grep "" all_380_files4exp.txt
#f
#ReExfile=(`grep -w "$f" 378_epr_files_sorted.txt`)

#grep -E "^${str}$"

#echo ${ReExfile[*]}
#echo ${#ReExfile[@]}

#for (( i = 0 ; i < ${#ReExfile[@]} ; i++ ))
#do
#echo "Element [$i]: ${ReExfile[$i]}"
#wc -l "${ReExfile[$i]}"


#fn=`echo "${ReExfile[$i]}" | awk -F . '{print $1}'` 

#echo "$fn"

#cut -f13 "${ReExfile[$i]}" > "$fn"_pedigree.csv
#cut -f13 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_pedigree.csv 

#cut -f58 "${ReExfile[$i]}" > "$fn"_Line.csv
#cut -f58 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_Line.csv 

#cut -f59 "${ReExfile[$i]}" > "$fn"_Tester.csv
#cut -f59 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_Tester.csv


#pedigree=(`tail -n +3 "${ReExfile[$i]}" | cut -f13`) 
#echo ${#pedigree[@]} 

#LineName=(`tail -n +3 "${ReExfile[$i]}" | cut -f58`)
#echo ${#LineName[@]} 

#Tester=(`tail -n +3 "${ReExfile[$i]}" | cut -f59`)
#echo ${#Tester[@]} 

#cut -f13 "${ReExfile[$i]}"
#cut -f58 "${ReExfile[$i]}"
#cut -f59 "${ReExfile[$i]}"

#echo "Element [$i]: ${acc[$i]}"

#if echo ${ped_acc[$i]} | grep -qi 'tester'
#then
#echo -e "${ped_acc[$i]}\t${ped[$i]}" >> single_trial_3WHYB-2010-15-1_pedigree.txt
#fi
#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
#done

#tail -n +3 "$f1"| cut -f4 | sort -u 
#grep "$f1" makumbi.pheno.154trials_CO.csv | wc -l

#(head -2 makumbi.pheno.154trials_CO.csv && grep "$f1" makumbi.pheno.154trials_CO.csv) > single_trial_"$f1".csv

#~/code/code_bash_shell/process_each_trial_for_vahid_data2.sh "$f1"

#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

done < $1


echo ${#flist[@]}

echo ${flist[@]}


Pedigree=() 
LineName=()
Tester=()

for (( i = 0 ; i < ${#flist[@]} ; i++ ))
do
#echo "Element [$i]: ${ReExfile[$i]}"
#wc -l "${ReExfile[$i]}"

#fn=`echo "${ReExfile[$i]}" | awk -F . '{print $1}'` 

#echo "$fn"

#cut -f13 "${ReExfile[$i]}" > "$fn"_pedigree.csv
#cut -f13 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_pedigree.csv 

#cut -f58 "${ReExfile[$i]}" > "$fn"_Line.csv
#cut -f58 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_Line.csv 

#cut -f59 "${ReExfile[$i]}" > "$fn"_Tester.csv
#cut -f59 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_Tester.csv

#Pedigree[$i]=(`tail -n +3 "${flist[$i]}" | cut -f14`) 
#LineName[$i]=(`tail -n +3 "${flist[$i]}" | cut -f59`)
#Tester[$i]=(`tail -n +3 "${flist[$i]}" | cut -f60`)


OLD_IFS=$IFS
IFS=$'\n'
Pedigree_single_trial=(`tail -n +3 "${flist[$i]}" | cut -f14`) 
LineName_single_trial=(`tail -n +3 "${flist[$i]}" | cut -f59`)
Tester_single_trial=(`tail -n +3 "${flist[$i]}" | cut -f60`)


#echo ${#Pedigree_single_trial[@]}
#echo ${Pedigree_single_trial[@]}

#echo ${#LineName_single_trial[@]}
#echo ${LineName_single_trial[@]}

#echo ${#Tester_single_trial[@]}
#echo ${Tester_single_trial[@]}

Pedigree=(${Pedigree[@]} ${Pedigree_single_trial[@]})
LineName=(${LineName[@]} ${LineName_single_trial[@]})
Tester=(${Tester[@]} ${Tester_single_trial[@]})


#echo ${#LineName[@]} 

#Tester=(`tail -n +3 "${ReExfile[$i]}" | cut -f59`)
#echo ${#Tester[@]} 

#cut -f13 "${ReExfile[$i]}"
#cut -f58 "${ReExfile[$i]}"
#cut -f59 "${ReExfile[$i]}"

#echo "Element [$i]: ${acc[$i]}"

#if echo ${ped_acc[$i]} | grep -qi 'tester'
#then
#echo -e "${ped_acc[$i]}\t${ped[$i]}" >> single_trial_3WHYB-2010-15-1_pedigree.txt
#fi
#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
done

echo ${#Pedigree_single_trial[@]}
echo ${#LineName_single_trial[@]}
echo ${#Tester_single_trial[@]}

echo ${#Pedigree[@]}
echo ${#LineName[@]}
echo ${#Tester[@]}


sorted_Pedigree=($(sort -u <<<"${Pedigree[*]}"))
echo ${#sorted_Pedigree[@]}

sorted_LineName=($(sort -u <<<"${LineName[*]}"))
echo ${#sorted_LineName[@]}

sorted_Tester=($(sort -u <<<"${Tester[*]}"))
echo ${#sorted_Tester[@]}

IFS=$OLD_IFS


done < $2