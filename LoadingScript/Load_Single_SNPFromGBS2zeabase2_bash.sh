while read line; do

f1=`echo "$line"`

#f11="'""$f1"%"'"

file1=`echo "$f1" | cut -f1`
file2=`echo "$f1" | cut -f2`
pop=`echo "$f1" | cut -f3`


echo "$file1"
echo "$file2"
echo "$pop"

#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea                                                                                                                                                 
#psql -U postgres -h localhost -f ~/code/code_sql/sql_one_project.sql -v V2="$f11" zea                                                                                                                             
#psql -U postgres -h localhost -f ~/code/code_sql/delete_rows_from_location.sql -v V2="$f1" zea                                                                                                                    
#psql -U postgres -h localhost -f ~/Code_BTI/code_sql/delete_old_gbs_data.sql -v V2="$f11" zea                                                                                                                    
#psql -U postgres -h db3.sgn.cornell.edu -f ~/Code_BTI/code_sql/delete_old_gbs_data.sql -v V2="$f11" zea

bash $HOME/Code_BTI/code_bash_shell/Load_Single_SNPFromGBS2zeabase2.sh "$file2" "$pop"
bash $HOME/Code_BTI/code_bash_shell/Load_Single_SNPFromGBS2zeabase2.sh "$file1" "$pop"

done < $1