#to use: bash /home/aiminy/code/code_bash_shell/Load_Single_SNPFromGBS2zeabase2.sh WEMA_GBS_1008-2_hmp_maker_conversion_7.txt WEMA_6x1008

snp_file=$1
pop=$2
 
echo "$snp_file"
echo "$pop"

cn=`sed -n 2,2p "$snp_file" | tr "\t" "\n" | wc -l`
 
#cn=8

for (( i=9; i <= $cn; i++ ))
do
#echo "$i"
perl $HOME/code/code_perl/load_zeabase_snps.pl -H localhost -D zea -i <(cut -f2,$i "$snp_file") -p GBS_Cornell_Biotech -g "$pop" < $HOME/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/database_user_name_pd2.txt

done
