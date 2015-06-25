
while read line; do 

f1=`echo "$line"|awk -F"\t" '{print $1}'`

#rn=`wc -l "$f1"`
#cn=`sed -n -e1,1p "$f1" | tr '\t' '\n' | wc -l`
#echo "$f1" $cn
#cn=`sed -n -e1,1p "$f1" | tr '\t' '\n' | wc -l`

#echo $rn $cn

#for((i=0;i<$length_dir_sample;i++));do
#path=${dir_sample[${i}]}
#echo $path
R --slave --args "$f1" < ~/code/list_trait.R

#R --slave --args "$f1" < ~/code/list_trait.R &
#done




f2=`echo "$line"|awk -F"\t" '{print $2}'`

#rn2=`wc -l "$f2"`
#printf "line: $line"

#cn2=`sed -n -e1,1p "$f2" | tr '\t' '\n' | wc -l`


#echo $rn2 $cn2

#file=`cut -f1 $line`
#printf "$file :"
#wc -l "$file"

#echo "$line"

#awk '{print $1}' "$line"

#wc -l "$line" 
#cut -f1 "$line"
#echo "$line";


done < $1
#ls
#ls
