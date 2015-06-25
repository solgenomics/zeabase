#~/code/code_bash_shell/Reformat_tester_related_to_each_trial.sh trail_name_project_line_tester_pedigree_no_title2.txt

while read line; do

if echo "$line" | cut -f4 | grep -qi '/'
then
tester1=`echo "$line" | cut -f4 | awk -F"/" '{print $1}'`
tester2=`echo "$line" | cut -f4 | awk -F"/" '{print $2}'`
tester=`echo "tester"_"$tester1"_"$tester2"`
else
tester1=`echo "$line" | cut -f4`
tester2=`echo "$line" | cut -f4`
tester=`echo "tester"_"$tester1"`
fi


acc1="$tester1"
acc2="$tester2"
acc="$tester"


echo "$line" |  awk -F"\t" -vacc1="$acc1" -vacc2="$acc2" -vacc="$acc" '{OFS="\t";print $1,$2,$3,$4,acc1,acc2,acc,$5}' 

done < $1