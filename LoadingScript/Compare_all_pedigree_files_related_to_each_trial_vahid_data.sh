#~/code/code_bash_shell/Compare_all_pedigree_files_related_to_each_trial_vahid_data.sh 153_trials_from_380_exp_files.txt
 
while read line; do

f=`echo "$line"`
echo "$f"

#echo "$f" | grep -c all_380_files4exp.txt
#f11=`expr '"'"$f1"'"'`

#`expr "$f1" : '.*_\(.*\)_'`
#`expr "$f1" : '.*_\(.*\)_'`

#echo "$f11" 

#pn="$f1"
#grep -c "S2-LINE TRIAL-1-1" all_380_files4exp.txt

grep -c "$f" 380_pedigree_file.txt
#grep -c "$f" all_380_files4exp_2.txt
grep "$f" 380_pedigree_file.txt

#grep -c "$f" test2.txt
#grep -c "$f" test3.txt
#grep -c '$f' test.txt

#grep "" all_380_files4exp.txt

ReExfile=(`grep "$f" 380_pedigree_file.txt`)

#echo ${ReExfile[*]} | diffuse -D
echo ${#ReExfile[@]}
diffuse -D ${ReExfile[*]}

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