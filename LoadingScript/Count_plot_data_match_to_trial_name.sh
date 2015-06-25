#~/code/code_bash_shell/Count_plot_data_match_to_trial_name.sh unique_trail_name.txt 

while read line; do

f=`echo "$line"`
#echo "$f"

#echo "$f" | grep -c all_380_files4exp.txt
#f11=`expr '"'"$f1"'"'`

#`expr "$f1" : '.*_\(.*\)_'`
#`expr "$f1" : '.*_\(.*\)_'`

#echo "$f11" 

#pn="$f1"
#grep -c "S2-LINE TRIAL-1-1" all_380_files4exp.txt

num=`grep -c "$f" 380_exp_files.txt`
#grep -c "$f" all_380_files4exp_2.txt
#grep "$f" 380_pedigree_file.txt

#echo -e "$f\t$num" 

ReExfile=(`grep "$f" 380_exp_files.txt`)
#echo ${ReExfile[0]}
#echo ${ReExfile[1]}

#for (( i = 0 ; i < ${#ReExfile[@]} ; i++ ))
#do
#echo "Element [$i]: ${ReExfile[$i]}"
##wc -l "${ReExfile[$i]}"
#fi

<<REP2
if [[ "${#ReExfile[@]}" -eq 2 ]]
then
echo -e "$f\t$num" 
#echo "${ReExfile[1]}" 
#echo "${ReExfile[2]}" 

diff <(cut -f5 "${ReExfile[0]}") <(cut -f5 "${ReExfile[1]}") 
diff <(cut -f14 "${ReExfile[0]}") <(cut -f14 "${ReExfile[1]}") 
diff <(cut -f59 "${ReExfile[0]}") <(cut -f59 "${ReExfile[1]}") 
diff <(cut -f60 "${ReExfile[0]}") <(cut -f60 "${ReExfile[1]}") 
fi
REP2
<<REP3
if [[ "${#ReExfile[@]}" -eq 3 ]]
then
echo -e "$f\t$num" 
#echo "${ReExfile[1]}" 
#echo "${ReExfile[2]}" 

diffuse -D <(cut -f5 "${ReExfile[0]}") <(cut -f5 "${ReExfile[1]}") <(cut -f5 "${ReExfile[2]}") 
diffuse -D <(cut -f14 "${ReExfile[0]}") <(cut -f14 "${ReExfile[1]}") <(cut -f14 "${ReExfile[2]}") 
diffuse -D <(cut -f59 "${ReExfile[0]}") <(cut -f59 "${ReExfile[1]}") <(cut -f59 "${ReExfile[2]}")
diffuse -D <(cut -f60 "${ReExfile[0]}") <(cut -f60 "${ReExfile[1]}") <(cut -f60 "${ReExfile[2]}")
fi
REP3

if [[ "${#ReExfile[@]}" -eq 4 ]]
then
echo -e "$f\t$num" 
#echo "${ReExfile[1]}" 
#echo "${ReExfile[2]}" 

diffuse -D <(cut -f5 "${ReExfile[0]}") <(cut -f5 "${ReExfile[1]}") <(cut -f5 "${ReExfile[2]}") <(cut -f5 "${ReExfile[3]}") 
diffuse -D <(cut -f14 "${ReExfile[0]}") <(cut -f14 "${ReExfile[1]}") <(cut -f14 "${ReExfile[2]}") <(cut -f14 "${ReExfile[3]}")
diffuse -D <(cut -f59 "${ReExfile[0]}") <(cut -f59 "${ReExfile[1]}") <(cut -f59 "${ReExfile[2]}") <(cut -f59 "${ReExfile[3]}")
diffuse -D <(cut -f60 "${ReExfile[0]}") <(cut -f60 "${ReExfile[1]}") <(cut -f60 "${ReExfile[2]}") <(cut -f60 "${ReExfile[3]}")
fi


if [[ "${#ReExfile[@]}" -gt 4 ]]
then
echo -e "$f\t$num" 
#echo "${ReExfile[1]}" 
#echo "${ReExfile[2]}" 

diffuse -D <(cut -f5 "${ReExfile[0]}") <(cut -f5 "${ReExfile[1]}") <(cut -f5 "${ReExfile[2]}") <(cut -f5 "${ReExfile[3]}") <(cut -f5 "${ReExfile[4]}") <(cut -f5 "${ReExfile[5]}") 
diffuse -D <(cut -f14 "${ReExfile[0]}") <(cut -f14 "${ReExfile[1]}") <(cut -f14 "${ReExfile[2]}") <(cut -f14 "${ReExfile[3]}") <(cut -f14 "${ReExfile[4]}") <(cut -f14 "${ReExfile[5]}") 
diffuse -D <(cut -f59 "${ReExfile[0]}") <(cut -f59 "${ReExfile[1]}") <(cut -f59 "${ReExfile[2]}") <(cut -f59 "${ReExfile[3]}") <(cut -f59 "${ReExfile[4]}") <(cut -f59 "${ReExfile[5]}") 
diffuse -D <(cut -f60 "${ReExfile[0]}") <(cut -f60 "${ReExfile[1]}") <(cut -f60 "${ReExfile[2]}") <(cut -f60 "${ReExfile[3]}") <(cut -f60 "${ReExfile[4]}") <(cut -f60 "${ReExfile[5]}") 
fi


#grep -c "$f" test2.txt
#grep -c "$f" test3.txt
#grep -c '$f' test.txt

#grep "" all_380_files4exp.txt

#ReExfile=(`grep "$f" 380_pedigree_file.txt`)

#echo ${ReExfile[*]} | diffuse -D
#echo ${#ReExfile[@]}
#diffuse -D ${ReExfile[*]}

#diffuse -D single_trial_ILS2-TEST-1_rep10_sorted_pedigree.csv single_trial_ILS2-TEST-1_rep11_sorted_pedigree.csv single_trial_ILS2-TEST-1_rep12_sorted_pedigree.csv single_trial_ILS2-TEST-1_rep13_sorted_ped#igree.csv


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