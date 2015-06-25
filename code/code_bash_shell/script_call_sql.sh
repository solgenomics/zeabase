#~/code/code_bash_shell/script_call_sql.sh  ~/DataFromXuecai/ProjectNamesFromZea2.txt
#~/code/code_bash_shell/script_call_sql.sh  ~/DataFromXuecai/ProjectLocationFromZea2.txt

while read line; do

f1=`echo "$line"`

f11="'""$f1""'"

echo "$f11"

#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea
#psql -U postgres -h localhost -f ~/code/code_sql/sql_one_project.sql -v V2="$f11" zea
#psql -U postgres -h localhost -f ~/code/code_sql/delete_rows_from_location.sql -v V2="$f1" zea
psql -U postgres -h localhost -f ~/code/code_sql/sql_show_and_delete_stocks_for_each_project.sql -v V2="$f11" zea

done < $1