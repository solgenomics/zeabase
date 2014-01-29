#~/code/code_bash_shell/Reformat_exps_files_related_to_each_trial_vahid_data_updated.sh single_trial_3WHYB-2010-15-1_rep1_sorted_part.csv

while read line; do

LineNumber=`echo "$line" | cut -f1`

if [[ $LineNumber -ne 1 ]] && [[ $LineNumber -ne 2 ]]
then

if echo "$line" | cut -f60 | grep -qi '/'
then
tester1=`echo "$line" | cut -f60 | awk -F"/" '{print $1}'`
tester2=`echo "$line" | cut -f60 | awk -F"/" '{print $2}'`
tester=`echo "tester"_"$tester1"_"$tester2"`
else
tester1=`echo "$line" | cut -f60`
tester=`echo "tester"_"$tester1"`
fi

#echo "$tester"

#if echo ${acc1[$i]} | grep -qi '/'


#OLD_IFS=$IFS
#IFS=$'\n'

#DESIG=("DESIG" "DESIG" `tail -n +3 "$line" | awk -F"\t" '{OFS="\t";print $59"_tester_"$60;}'`)
#NOPLT=("NOPLT" "NOPLT")
#NOSV=("NOSV" "NOSV")

#echo ${#DESIG[@]}
#echo ${#NOPLT[@]}
#echo ${#NOSV[@]}



#echo ${DESIG[@]}
#echo ${NOPLT[@]}
#echo ${NOSV[@]}

echo "$line" |  awk -F"\t" -vtester="$tester" '{OFS="\t";$1=$8;$2=$9;$3=$7;$4=$6;$60=tester;print $1,$2,$3,$4,$59"_"$60,"NA","NA",
$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$50,$51,$52,$53,$54,$55,$56,
$5}' 

else

echo "$line" |  awk -F"\t" '{OFS="\t";$1="ENTRY";$2="REP";$3="BLOCK";$4="PLOT";$5="DESIG";$6="NOPLT";$7="NOSV";print $1,$2,$3,$4,$5,$6,$7,
$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$50,$51,$52,$53,$54,$55,$56,
"NameOfExperiment"}' 

#ENTRY   REP     BLOCK   PLOT    DESIG   NOPLT   NOSV  

fi

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


#OLD_IFS=$IFS
#IFS=$'\n'
#Pedigree_single_trial=(`tail -n +3 "${flist[$i]}" | cut -f14`) 
#LineName_single_trial=(`tail -n +3 "${flist[$i]}" | cut -f59`)
#Tester_single_trial=(`tail -n +3 "${flist[$i]}" | cut -f60`)


#echo ${#Pedigree_single_trial[@]}
#echo ${Pedigree_single_trial[@]}

#echo ${#LineName_single_trial[@]}
#echo ${LineName_single_trial[@]}

#echo ${#Tester_single_trial[@]}
#echo ${Tester_single_trial[@]}

#Pedigree=(${Pedigree[@]} ${Pedigree_single_trial[@]})
#LineName=(${LineName[@]} ${LineName_single_trial[@]})
#Tester=(${Tester[@]} ${Tester_single_trial[@]})


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


#echo ${#Pedigree_single_trial[@]}
#echo ${#LineName_single_trial[@]}
#echo ${#Tester_single_trial[@]}

#echo ${#Pedigree[@]}
#echo ${#LineName[@]}
#echo ${#Tester[@]}


#sorted_Pedigree=($(sort -u <<<"${Pedigree[*]}"))
#echo ${#sorted_Pedigree[@]}

#sorted_LineName=($(sort -u <<<"${LineName[*]}"))
#echo ${#sorted_LineName[@]}

#sorted_Tester=($(sort -u <<<"${Tester[*]}"))
#echo ${#sorted_Tester[@]}

#IFS=$OLD_IFS

done < $1