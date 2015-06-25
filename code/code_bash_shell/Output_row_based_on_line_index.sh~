# ~/code/code_bash_shell/Check_column_number_for_each_row2.sh file_name

while read line; do
#for (( i=1; i <= 44127; i++ ))
#do
#echo "Random number $i: $RANDOM"

nr=`echo "$line" | tr "\t" "\n" | wc -l`
#nr=`sed -n -e"$i","$i"p $1 | tr "," "\n" | wc -l`

#echo "Row $i: $nr"

#echo "Row $i:"

#cut -f2 | awk -F"," ' $58=="" ' $1 | wc -l

rownum=`echo "$line" | awk -F"\t" '{print $1}'`
#rownum=`echo "$rownum" | tr -d ' '`

#for (( i=1; i <= 44128; i++ ))
#do
#echo "Random number $i: $RANDOM"

#nr=`echo "$line" | tr "\t" "\n" | wc -l`
#nr=`sed -n -e"$i","$i"p $1 | tr "," "\n" | wc -l`

echo "Row $rownum: $nr"

#echo "Row $i:"

#cut -f2 | awk -F"," ' $58=="" ' $1 | wc -l

done < $1