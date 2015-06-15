#~/code/code_bash_shell/loading_trials_accession_pedigree_data_bash.sh 

#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash_delete_old_records2.sql zea
#psql -U postgres -h localhost -f ~/code/code_sql/sql_one_project.sql zea

#echo "$1"
#f1=`echo "$line" | awk -F"\t" '{print $1}'`


pop_name=`echo "$1"| cut -c 1-6`


#echo -e  $pop_name" "\n"

echo "$pop_name"
#echo -e "\n"

while read line; do

#f1=`echo "$line" | awk -F"\t" '{print $1}'`


#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

#echo "$pop_name"
#echo "$f1"

#wc -l "$f1"

#f11=`ls "$f1" | awk -F . '{print $1}'`
#echo "$f11"

e1=`echo "$line"| awk -F"\t" '{print $1}'`
echo "$e1"

lc=`echo "$line" | awk -F"\t" '{print $2}'`
echo "$lc"


#rep1=`echo "$line"| awk -F"\t" '{print $4}'`
#echo "$rep1"

#rep2=`echo "$line" | awk -F"\t" '{print $5}'`
#echo "$rep2"

acc_name=`grep "$pop_name" 19_accession.txt`
echo "$acc_name"

acc_ped_name=`grep "$pop_name" 19_accession_pedigree.txt`
echo "$acc_ped_name"


#echo $'\\n'
#echo "\n"
#echo -e "$f1"'\t'"$e1"'\t'"$lc"

#~/code/code_bash_shell/loading_metadata_accession_pedigree_plot_data2.sh "$f1" "$e1" "$lc" "$acc_name" "$acc_ped_name" "$rep1" "$rep2"< database_user_name_pd.txt 
#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea

perl ~/code/loading_script/load_accessions_in_database_aimin.pl -H localhost -D zea -i "$acc_name" -e "$el" -c "$lc" < database_user_name_pd2.txt

perl ~/code/code_perl/load_pedigrees_in_database_aimin.pl -H localhost -D zea -i "$acc_ped_name" -e "$el" -c "$lc" < database_user_name_pd2.txt
done < $1

#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea