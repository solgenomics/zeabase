#~/code/code_bash_shell/bash_process_each_trial_for_vahid_data.sh names_of_153_single_trials.txt

while read line; do

f1=`echo "$line"`

#echo "$f1"

#grep "$f1" makumbi.pheno.154trials_CO.csv | wc -l

#(head -2 makumbi.pheno.154trials_CO.csv && grep "$f1" makumbi.pheno.154trials_CO.csv) > single_trial_"$f1".csv

#~/code/code_bash_shell/process_each_trial_for_vahid_data2.sh "$f1"
#~/code/code_bash_shell/process_each_trial_for_vahid_data2.sh "$f1"
~/code/code_bash_shell/ExtractDataBasedOnReplicationsOfEachTrial.sh "$f1"

#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

done < $1
