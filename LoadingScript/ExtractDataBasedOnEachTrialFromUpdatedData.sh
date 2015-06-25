#~/code/code_bash_shell/ExtractDataBasedEachTrial.sh unique_trail_name.txt makumbi_pheno_154trials_backup_updated3_co_with_line_number.csv
#~/code/code_bash_shell/ExtractDataBasedOnEachTrialFromUpdatedData.sh unique_trial_name_153.txt AllTrialDataAfterQCFillReplaceChange.csv

while read line; do

f1=`echo "$line"`

echo "$f1"

#grep "$f1" makumbi.pheno.154trials_CO.csv | wc -l


#awk '$5 == "QPM-3W144&159-1"' AllTrialDataAfterQCFillReplaceChange.csv

(head -2 $2 && awk -F"\t" -vf1="$f1" '$5 == f1' $2) > single_trial_"$f1".csv

#awk -vf1="$f1" -F"\t" 'BEGIN{OFS="\t";} {$5==f1;print;}' $2 > 


#'BEGIN{OFS="=";} {print $3,$4;}'

#(head -2 $2 && awk ' $5 == '$f1' ' $2) > single_trial_"$f1".csv

#(head -2 $2 && awk -F"\t" '$5 == '"$f1"' { print;}' $2) > single_trial_"$f1".csv

#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

done < $1