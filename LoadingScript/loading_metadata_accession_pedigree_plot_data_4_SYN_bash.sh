#~/code/code_bash_shell/loading_metadata_accession_pedigree_plot_data_bash.sh
#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash_delete_old_records2.sql zea
#psql -U postgres -h localhost -f ~/code/code_sql/sql_one_project.sql zea

while read line; do

f1=`echo "$line" | awk -F"\t" '{print $1}'`
f2=`echo "$line" | awk -F"\t" '{print $2}'`
f3=`echo "$line" | awk -F"\t" '{print $3}'`
f4=`echo "$line" | awk -F"\t" '{print $4}'`
f5=`echo "$line" | awk -F"\t" '{print $5}'`


echo -e "\n";

echo "$f1"
e1=`sed -n -e2,2p "$f1" | cut -f2`
echo "$e1" 

lc=`sed -n -e2,2p "$f1" | cut -f3`
echo "$lc" 

#pop_name=`echo "$f1"| cut -c 12-17`

#echo "$pop_name"
#echo "$f1"

#wc -l "$f1"

#f11=`ls "$f1" | awk -F . '{print $1}'`
#echo "$f11"

#e1=`echo "$line"| awk -F"\t" '{print $2}'`
#echo "$e1"

#lc=`echo "$line" | awk -F"\t" '{print $3}'`
#echo "$lc"


rep1=`echo "$line"| awk -F"\t" '{print $4}'`
echo "$rep1"

rep2=`echo "$line" | awk -F"\t" '{print $5}'`
echo "$rep2"

acc_name=`echo "$line" | awk -F"\t" '{print $2}'`
echo "$acc_name"

acc_ped_name=`echo "$line" | awk -F"\t" '{print $3}'`
echo "$acc_ped_name"


#echo $'\\n'
#echo "\n"
#echo -e "$f1"'\t'"$e1"'\t'"$lc"

#~/code/code_bash_shell/loading_metadata_accession_pedigree_plot_data2.sh "$f1" "$e1" "$lc" "$acc_name" "$acc_ped_name" "$rep1" "$rep2"< database_user_name_pd.txt

#~/code/code_bash_shell/loading_metadata_accession_pedigree_plot_data_4_SYN.sh "$f1" "$e1" "$lc" "$acc_name" "$acc_ped_name" "$rep1" "$rep2"< database_user_name_pd.txt

~/Code_BTI/code_bash_shell/loading_metadata_accession_pedigree_plot_data_4_SYN.sh "$f1" "$e1" "$lc" "$acc_name" "$acc_ped_name" "$rep1" "$rep2"< database_user_name_pd.txt
#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea

done < $1

#psql -U postgres -h localhost -f ~/code/code_sql/sql_bash.sql zea
