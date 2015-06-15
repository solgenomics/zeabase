# ~/code/code_bash_shell/Check_column_number_for_each_row.sh file_name

for (( i=1; i <= 44128; i++ ))
do
#echo "Random number $i: $RANDOM"

nr=`sed -n -e"$i","$i"p $1 | tr "\t" "\n" | wc -l`
#nr=`sed -n -e"$i","$i"p $1 | tr "," "\n" | wc -l`

#echo "Row $i: $nr"

#echo "Row $i:"

#cut -f2 | awk -F"," ' $58=="" ' $1 | wc -l

rownum=`sed -n -e"$i","$i"p $1 | awk -F"\t" '{print $1}'`
rownum=`echo "$rownum" | tr -d ' '`
trial_name=`sed -n -e"$i","$i"p $1 | awk -F"\t" '{print $5}'`
trial_ped=`sed -n -e"$i","$i"p $1 | awk -F"\t" '{print $14}'`
trial_line=`sed -n -e"$i","$i"p $1 | awk -F"\t" '{print $59}'`
trial_tester=`sed -n -e"$i","$i"p $1 | awk -F"\t" '{print $60}'`

#s2=''

if [ -z "$trial_name" ]; 
then
      trial_name="unknowtrial"_"$rownum"
#      echo "$trial_name"
         
      if [ -z "$trial_ped" ];
      then
	trial_ped="$trial_name"_"unknowpedigree"
#	echo "$trial_ped"
      fi

      if [ -z "$trial_line" ];
      then
	trial_line="$trial_name"_"unknowline"
#	echo "$trial_line"
      fi

      if [ -z "$trial_tester" ];
      then
	trial_tester="$trial_name"_"unknowtester"
#	echo "$trial_tester"
      fi
else

      if [ -z "$trial_ped" ];
      then
	trial_ped="$trial_name"_"$rownum"_"unknowpedigree"
#	echo "$trial_ped"
      fi

      if [ -z "$trial_line" ];
      then
	trial_line="$trial_name"_"$rownum"_"unknowline"
#	echo "$trial_line"
      fi

      if [ -z "$trial_tester" ];
      then
	trial_tester="$trial_name"_"$rownum"_"unknowtester"
#	echo "$trial_tester"
      fi
fi




#echo -e "$trial_name\t$trial_ped\t$trial_line\t$trial_tester"

#sed -n -e"$i","$i"p $1 | awk -vtrial_name="$trial_name" OFS="\t" -F"\t" '{$5=;print;}'

sed -n -e"$i","$i"p $1 | awk -F"\t" -vtrial_name="$trial_name" -vtrial_ped="$trial_ped" -vtrial_line="$trial_line" -vtrial_tester="$trial_tester" '{$5=trial_name;$14=trial_ped;$59=trial_line;$60=trial_tester}1' OFS="\t"

#sed -n -e"$i","$i"p $1 | awk -F"\t" -vtrial_name="$trial_name" '{$5=trial_name;print;}' OFS="\t"
#awk -v OFS="," -F"," '{$13="(MATUBA#1-B1/EECOMP./Katumani/KATUMANI36-8-1/ECA-EE-POP1)-B-B-1/ECA-EE-55";$58="(MATUBA#1-B1/EECOMP./Katumani/KATUMANI36-8-1/ECA-EE-POP1)-B-B-1";print;}'



done

#sed -n -e18,18p AllTrialDataAfterQC.csv | tr "\t" "\n" | wc -l
