snp_file=$1
pop=$2
 
echo "$snp_file"
echo "$pop"

cn=`sed -n 2,2p "$snp_file" | tr "\t" "\n" | wc -l`
 
#cn=8

for (( i=9; i <= $cn; i++ ))
do
#echo "$i"
perl $HOME/code/code_perl/load_zeabase_snps.pl -H db3.sgn.cornell.edu -D zea -i <(cut -f2,$i "$snp_file") -p GBS_Cornell_Biotech -g "$pop" < $HOME/code/database_user_name_pd2.txt

done
