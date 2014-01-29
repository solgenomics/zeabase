#sh ~/code/change_name_and_loading_data.sh metadata_rep1_rep2.txt

while read line; do 

f1=`echo "$line"|awk -F"\t" '{print $1}'`
echo "$f1"
wc -l "$f1"
f11=`ls "$f1" | awk -F . '{print $1}'`
echo "$f11"

perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonyMetadata.pl -H localhost -D zea -i "$f1"

f2=`echo "$line"|awk -F"\t" '{print $2}'`
#echo "$f2" 
wc -l "$f2"
f22=`ls "$f2" | awk -F . '{print $1}'`
echo "$f22"
cp "$f2" "$f22"_rep1.csv
cp "$f2" "$f22".csv

#echo "$f22"-rep1.csv

perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "$f22".csv

f3=`echo "$line"|awk -F"\t" '{print $3}'`
#echo "$f3"
wc -l "$f3"
f33=`ls "$f3" | awk -F . '{print $1}'`
echo "$f33"
cp "$f3" "$f33"_rep2.csv
cp "$f3" "$f33".csv

perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "$f33".csv
#ff=${"$f1".}
#echo `expr "$f1" : '.*_\(.*\)_'`


#cat FirstRowTitle.csv "$f1" > "$f1"_add_title.csv
#echo "$ff"

#rn=`wc -l "$f1"`
#cn=`sed -n -e1,1p "$f1" | tr '\t' '\n' | wc -l`
#echo "$f1" $cn
#cn=`sed -n -e1,1p "$f1" | tr '\t' '\n' | wc -l`

#echo $rn $cn

#for((i=0;i<$length_dir_sample;i++));do
#path=${dir_sample[${i}]}
#echo $path
#R --slave --args "$f1" < ~/code/list_trait.R

#R --slave --args "$f1" < ~/code/list_trait.R &
#done


#f2=`echo "$line"|awk -F"\t" '{print $2}'`

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