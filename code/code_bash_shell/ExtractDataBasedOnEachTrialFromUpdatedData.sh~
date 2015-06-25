#~/code/code_bash_shell/ExtractDataBasedEachTrial.sh unique_trail_name.txt makumbi_pheno_154trials_backup_updated3_co_with_line_number.csv

while read line; do

f1=`echo "$line"`

echo "$f1"

#grep "$f1" makumbi.pheno.154trials_CO.csv | wc -l

(head -2 $2 && grep "$f1" $2) > single_trial_"$f1".csv

#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

done < $1