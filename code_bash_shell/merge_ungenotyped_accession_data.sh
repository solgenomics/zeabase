#~/code/code_bash_shell/merge_ungenotyped_accession_data.sh accession_19.txt

while read line; do 

f1=`echo "$line"`
echo "$f1"

#rn=`wc -l "$f1"|cut -f1`

#echo "$rn"
#acc_str=${$f1:5:6}

acc_str=`echo "$f1" | cut -c 6-11`
echo "$acc_str"

grep -r ungenotyped ../plot_accession_data/*"$acc_str"* | cut -f5 | sort -u > "$acc_str"_ungenotyped_accession.csv

cat "$f1" "$acc_str"_ungenotyped_accession.csv > "$f1"_plus_ungenotyped.csv

#<<COMMENT1

#while read line;do

#f2=`echo "$line"`
#echo "$f2"

plot_str=`echo "$f2"| cut -c 12-17`

#echo "$plot_str"

#if [ "$acc_str" == "$plot_str" ]
#then
#  echo "merge" "$f1" "and"  "$f2"

#f11=`ls "$f1" | awk -F . '{print $1}'`
#f22=`ls "$f2" | awk -F . '{print $1}'`

#echo "$f11" "and" "$f22"

#tail -n +2 "$f1" > "$f11"_tail.csv   
#tail -n +3  "$f2" > "$f22"_tail.csv

#R --slave --args "$acc_str" "$f11"_tail.csv "$f22"_tail.csv "$f22" < ~/code/code_R/merge_and_generate_accession_plot.R

#(head -n 2 "$f2" && tail -n +1 "$f22"_output.csv) > "$f22"_plot_accession2beformated.csv 

#sed 's/+AF8-/_/g' "$f22"_plot_accession2beformated.csv > "$f22"_plot_accession.csv 

#fi

#wc -l "$f1"
#f11=`ls "$f1" | awk -F . '{print $1}'`
#echo "$f11"


#f11=`ls "$1" | awk -F . '{print $1}'`
#echo "$f11"

#ls "$1" | awk -F . '{print $1}'

#(head -n 2 "$1" && tail -n +3 "$1" | sort -n -k1) > "$f11"_sorted.csv

#(head -n 2 "$f1" && tail -n +3 "$f1" | sort -n -k1) > "$f11"_sorted.csv
#done < $2
#COMMENTS
#<<COMMENT1
#    your comment 1
#    comment 2
#    blah
#COMMENT1

done < $1