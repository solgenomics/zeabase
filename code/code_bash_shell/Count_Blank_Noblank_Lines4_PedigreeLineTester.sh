# ~/code/code_bash_shell/Count_Blank_Noblank_Lines4_PedigreeLineTester.sh 380_pedigree_line_tester_file.txt

while read line; do

pedigree=`echo "$line"|awk '{print $1}'`

#if echo "$pedigree" | grep -qi '//'
#then
#echo "$pedigree" | awk -F"//" '{print $1}'  >> file_pedigree_line_part.txt
#echo "$pedigree" | awk -F"//" '{print $2}'  >> file_pedigree_tester_part.txt
#else 
#echo "$pedigree" >> file_pedigree_line_part.txt
#echo "unknown"   >> file_pedigree_tester_part.txt
#fi

#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
#done

#echo "$pedigree"

cat "$pedigree" >> file_pedigree.txt

LineName=`echo "$line"|awk '{print $2}'`
echo "$LineName"

cat "$LineName" >> file_LineName.txt

tester=`echo "$line"|awk '{print $3}'`
echo "$tester"
cat "$tester" >> file_tester.txt


echo -e "\n"

trn_ped=`wc -l "$pedigree" | awk -F" " '{print $1}'`
trn_line=`wc -l "$LineName" | awk -F" " '{print $1}'`
trn_tester=`wc -l "$tester" | awk -F" " '{print $1}'`

nbrn_ped=`grep -cv "^\s*$" "$pedigree"`
nbrn_line=`grep -cv "^\s*$" "$LineName"`
nbrn_tester=`grep -cv "^\s*$" "$tester"`

brn_ped=`grep -c "^\s*$" "$pedigree"`
brn_line=`grep -c "^\s*$" "$LineName"`
brn_tester=`grep -c "^\s*$" "$tester"`

echo -e "$trn_ped\t$nbrn_ped\t$brn_ped"
echo -e "$trn_line\t$nbrn_line\t$brn_line"
echo -e "$trn_tester\t$nbrn_tester\t$brn_tester"


#grep -cv "^\s*$" <(comm -3 <(tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv | awk -F"//" '{print $1}') <(tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_Line.csv | awk -F"/t" '{print $1}'))

done < $1