#~/code/code_bash_shell/process_each_trial_for_vahid_data3.sh 153_metadata_accession_pedi_files.txt 378_plotdata_files.txt

#~/code/code_bash_shell/script_call_sql.sh ProjectNames.txt


#<<ToRUN


while read line; do

Metadata=`echo "$line" | awk -F"\t" '{print $1}'`
Accdata=`echo "$line" | awk -F"\t" '{print $2}'`
Peddata=`echo "$line" | awk -F"\t" '{print $3}'` 

pro=`sed -n 2,2p "$Metadata" | awk -F"\t" '{print $1}'`
loc=`sed -n 2,2p "$Metadata" | awk -F"\t" '{print $3}'`

echo "$pro"
echo "$loc"

echo "$Metadata"
echo "$Accdata"
echo "$Peddata"

#perl ~/code/code_perl/LoadScriptForTonyMetadata.pl -H localhost -D zea -i "$Metadfata" < database_user_name_pd2.txt
#perl ~/code/loading_script/load_accessions_in_database_aimin.pl -H localhost -D zea -i "$Accdata" -e "$pro" -c "$loc" < database_user_name_pd2.txt
#perl ~/code/code_perl/load_pedigrees_in_database_4_VahidData.pl -H localhost -D zea -i "$Peddata" -e "$pro" -c "$loc" < database_user_name_pd2.txt

perl ~/code/code_perl/LoadScriptForTonyMetadata.pl -H localhost -D zea -i "$Metadata" < database_user_name_pd2.txt

perl ~/code/loading_script/load_accessions_in_database_aimin.pl -H localhost -D zea -i "$Accdata" -e "$pro" -c "$loc" < database_user_name_pd2.txt

perl ~/code/code_perl/load_pedigrees_in_database_4_VahidData.pl -H localhost -D zea -i "$Peddata" -e "$pro" -c "$loc" < database_user_name_pd2.txt

#perl ~/code/code_perl/LoadScriptForVahidPlotdata.pl -H localhost -D zea -i single_trial_3WHYB-2010-15-1.cvs

flist=()

while read line; do

f=`echo "$line"`
    
     d=(`echo "$line" | grep -b -o _rep |cut -d":" -f1`)
     nd=`echo ${d[0]}`
 #    echo "$nd"   

     ff=`echo "$line"|cut -c1-$nd`

#     echo "$ff" 

#    nd=`expr ${#d[@]}-1`
#    ndd=`echo ${d[nd]}`

if [ "$pro" == "$ff" ]
then
flist=("${flist[@]}" "$f")
#echo "$f"
fi  

done < $2


#echo ${#flist[@]}

#echo ${flist[@]}

cnt=${#flist[@]}


for (( i = 0 ; i < cnt ; i++ ))
do

#echo "Element [$i]: ${flist[$i]}"

#cp "${flist[$i]}" "$pro".cvs

cut -f1-24,26- "${flist[$i]}" > "$pro".cvs

perl ~/code/code_perl/LoadScriptForVahidPlotdata.pl -H localhost -D zea -i "$pro".cvs < database_user_name_pd2.txt

done


done < $1

#ToRUN
