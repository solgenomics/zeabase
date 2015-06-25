while read line; do 

f1=`echo "$line"|awk -F"\t" '{print $1}'`
echo "$f1"
#wc -l "$f1"
f11=`ls "$f1" | awk -F . '{print $1}'`
echo "$f11"


#f11=`ls "$1" | awk -F . '{print $1}'`
#echo "$f11"

#ls "$1" | awk -F . '{print $1}'

#(head -n 2 "$1" && tail -n +3 "$1" | sort -n -k1) > "$f11"_sorted.csv

(head -n 2 "$f1" && tail -n +3 "$f1" | sort -n -k1) > "$f11"_sorted.csv

done < $1