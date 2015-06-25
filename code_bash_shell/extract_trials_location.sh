while read line; do 

f1=`echo "$line"`
#echo "$f1"

#wc -l "$f1"

#f11=`ls "$f1" | awk -F . '{print $1}'`
#echo "$f11"

e1=`sed -n -e2,2p "$f1" | awk '{print $2}'`
#echo "$e1"

lc=`sed -n -e2,2p "$f1" | awk '{print $3}'`
#echo "$lc"

echo -e "$f1"'\t'"$e1"'\t'"$lc"

done < $1