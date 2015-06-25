#~/code/code_bash_shell/Bash_Reformat_exps_files_related_to_each_trial_vahid_data_updated.sh 378_epr_files_sorted.txt

while read line; do

#f=`echo "$line"`
#echo "$f"

#    c=(`echo "$line" | grep -b -o single_trial_ |cut -d":" -f1`)
#    nc=`echo ${c[0]}`
#    ncc=`expr "$nc"+13`
#    echo "$ncc"

     d=(`echo "$line" | grep -b -o _sorted |cut -d":" -f1`)
     nd=`echo ${d[0]}`
 #    echo "$nd"   

     ff=`echo "$line"|cut -c14-$nd`

echo "$ff" 


#    nd=`expr ${#d[@]}-1`
#    ndd=`echo ${d[nd]}`

#if [ "$ut" == "$ff" ]
#then
#flist=("${flist[@]}" "$f")
#echo "$f"
#fi  
#"${Unix[@]}"

~/code/code_bash_shell/Reformat_exps_files_related_to_each_trial_vahid_data_updated2.sh "$line" >> trail_name_project_line_tester_pedigree.txt


#~/code/code_bash_shell/Reformat_exps_files_related_to_each_trial_vahid_data_updated.sh "$line" > "$ff"_plotdata.csv



done < $1