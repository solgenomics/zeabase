while read line; do

pattern4minusone=`echo "$line" | cut -f4`

#echo "$pattern4minusone"

if [[ "$pattern4minusone" == A || "$pattern4minusone" == C || "$pattern4minusone" == G || "$pattern4minusone" == T ]]
then
echo "$line" | cut -f 1,5- | sed "s/$pattern4minusone/-1/g" 
#echo "OK"      
else
echo "$line" | cut -f 1,5-
#echo "NotOK"   
fi
 
#echo "$line" | cut -f5- | tr "\t" "\n" | sort -u | awk '{printf("%s\t",$0)} END {print ""}'

done < $1
