#to use: bash $HOME/Code_BTI/code_bash_shell/Load_Single_SNPFromGBS2zeabase2.sh WEMA_GBS_1008-2_hmp_maker_conversion_7.txt WEMA_6x1008
#to use: bash $HOME/Code_BTI/code_bash_shell/Load_Single_SNPFromGBS2zeabase2.sh WEMA_GBS_1008_hmp_maker_conversion_7.txt WEMA_6x1008 

snp_file=$1
pop=$2
 
echo "$snp_file"
echo "$pop"

cn=`sed -n 1,1p "$snp_file" | tr "\t" "\n" | wc -l`

#echo $cn
 
let "cn--" 

#cnn="$cn"-1

echo $cn
#cn=8

for (( i=8; i <= $cn; i++ ))
do
echo "$i"
perl $HOME/Code_BTI/code_perl/load_zeabase_snps.pl -H db3.sgn.cornell.edu -D zea -i <(cut -f2,$i "$snp_file") -p GBS_Cornell_Biotech -g "$pop" < $HOME/zeabase_access.txt

done
