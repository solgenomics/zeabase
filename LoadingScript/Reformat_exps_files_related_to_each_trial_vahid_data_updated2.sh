#~/code/code_bash_shell/Reformat_exps_files_related_to_each_trial_vahid_data_updated2.sh single_trial_3WHYB-2010-15-1_rep1_sorted.csv

while read line; do

LineNumber=`echo "$line" | cut -f1`

if [[ $LineNumber -ne 1 ]] && [[ $LineNumber -ne 2 ]]
then

LineName=`echo "$line" | cut -f59`

if echo "$line" | cut -f60 | grep -qi '/'
then
tester1=`echo "$line" | cut -f60 | awk -F"/" '{print $1}'`
tester2=`echo "$line" | cut -f60 | awk -F"/" '{print $2}'`
tester=`echo "tester"_"$tester1"_"$tester2"`
else
tester1=`echo "$line" | cut -f60`
tester=`echo "tester"_"$tester1"`
fi

acc="$LineName"_"$tester"

echo "$line" |  awk -F"\t" -vacc="$acc" '{OFS="\t";print $5,$12,$15,$4,acc,$59,$60,$14}' 

else

echo "$line" |  awk -F"\t" '{OFS="\t";print $5,$12,$15,$4,"Line_Tester",$59,$60,$14}' 

fi

done < $1