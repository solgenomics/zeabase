#~/code/code_bash_shell/script_call_sql.sh  ~/DataFromXuecai/ProjectNamesFromZea2.txt
#~/code/code_bash_shell/script_call_sql.sh  ~/DataFromXuecai/ProjectLocationFromZea2.txt

#while read line; do

#f1=`echo "$line"`

#f11="'""$f1""'"

#echo "$f11"

#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea
#psql -U postgres -h localhost -f ~/code/code_sql/sql_one_project.sql -v V2="$f11" zea
#psql -U postgres -h localhost -f ~/code/code_sql/delete_rows_from_location.sql -v V2="$f1" zea

#done < $1


(grep 6x1023 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1028 Ex6x1008_trials_location_rep1and2.txt &&
grep 6X1114 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1115 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1116 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1117 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1118 Ex6x1008_trials_location_rep1and2.txt &&
grep 6X1119 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1120 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1121 Ex6x1008_trials_location_rep1and2.txt &&
grep 6x1122 Ex6x1008_trials_location_rep1and2.txt)
