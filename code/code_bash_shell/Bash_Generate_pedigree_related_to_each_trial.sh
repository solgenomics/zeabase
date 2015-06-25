#~/code/code_bash_shell/Bash_Generate_pedigree_related_to_each_trial.sh 153_accession_files.txt

while read line; do

f=`echo "$line" | awk -F"." '{print $1}'`
 
echo "$f"

~/code/code_bash_shell/Generate_pedigree_related_to_each_trial.sh "$line" > "$f"_pedi.txt

done < $1