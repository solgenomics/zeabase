f1=`echo $1`
#echo "$f1"
f11=`echo $1 | awk -F. '{print $1}'`
echo "$f11"

rep=(`tail -n +3  "$f1" | cut -f9 | sort -u`)
#echo ${#rep[@]}

cnt=${#rep[@]}

#echo $cnt

#echo "____________"
#echo "Array arrayX"
#echo "____________"

#acc_with_tester=()
for (( i = 0 ; i < cnt ; i++ ))
do
#echo "Element [$i]: ${rep[$i]}"

#grep / ${acc1[$i]}
#if echo ${acc1[$i]} | grep -qi '/'
#then
#echo "Element [$i]: ${acc1[$i]}_"$acc_tester""
#acc_with_tester[$i]=${acc1[$i]}_"$acc_tester"
#fi

rep_index=${rep[$i]}

(head -2 "$f1" && awk -F"\t" '$9 == '$rep_index' { print;}' "$f1") > "$f11"_rep"${rep[$i]}".csv
(head -2 "$f11"_rep"${rep[$i]}".csv && tail -n +3  "$f11"_rep${rep[$i]}.csv | sort -nk8) > "$f11"_rep"${rep[$i]}"_sorted.csv
#(head -2 "$f1" && awk -F"\t" '$8 == "2" { print;}' "$f1") > "$f11"_rep"${rep[$i]}".csv

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})

#nl single_trial_3WHYB-2010-15-1_rep1_sorted.csv > single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv

#(head -2 single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv && sed -n '3~2p' single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv) | cut -f 2- > single_trial_3WHYB-2010-15-1_rep1_1.csv
#(head -2 single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv && sed -n '4~2p' single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv) | cut -f 2- > single_trial_3WHYB-2010-15-1_rep1_2.csv

uentn=`tail -n +3 "$f11"_rep"${rep[$i]}"_sorted.csv | cut -f8 | sort -u | wc -l`
entn=`tail -n +3 "$f11"_rep"${rep[$i]}"_sorted.csv | cut -f8 | sort | wc -l`


if [ $uentn != $entn ]
then
echo -e $uentn"\t"$entn 

#nl "$f11"_rep"${rep[$i]}"_sorted.csv > "$f11"_rep"${rep[$i]}"_sorted_nl.csv

(head -2 "$f11"_rep"${rep[$i]}"_sorted.csv && sed -n '3~2p' "$f11"_rep"${rep[$i]}"_sorted.csv) > "$f11"_rep"${rep[$i]}"_sorted_1.csv

(head -2 "$f11"_rep"${rep[$i]}"_sorted.csv && sed -n '4~2p' "$f11"_rep"${rep[$i]}"_sorted.csv) > "$f11"_rep"${rep[$i]}"_sorted_2.csv

fi

#[ $count -eq 100 ]

done

 
#<<COMMENTS
#(head -2 "$f1" && awk -F"\t" '$8 == "1" { print;}' "$f1") > "$f11"_rep1.csv

#(head -2 "$f1" && awk -F"\t" '$8 == "2" { print;}' "$f1") > "$f11"_rep2.csv

#COMMENTS
#(head -2 "$f11"_rep1.csv && tail -n +3  "$f11"_rep1.csv | sort -nk7) > "$f11"_rep1_sorted.csv
#(head -2 "$f11"_rep2.csv && tail -n +3  "$f11"_rep2.csv | sort -nk7) > "$f11"_rep2_sorted.csv