ff=`echo $1 | awk -F"." '{print $1;}'` 
echo "$ff"
snp_file=`echo "$ff"_snp.txt`
echo "$snp_file"

(sed -n 1,1p $1 | cut -f1,12- | tr "\t" "\n" |  awk -F":" '{print $1}' | tr "\n" "\t" | awk -F"\t" '{OFS="\t";$1="marker"; print;}' && tail -n +2 $1 | cut -f1,12-) > "$snp_file"