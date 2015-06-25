




for (( i=2; i <= 101; i++ ))
do
#echo "Random number $i: $RANDOM"

#nr=`echo "$line" | tr "\t" "\n" | wc -l`
#nr=`sed -n -e"$i","$i"p $1 | tr "," "\n" | wc -l`

#echo "Row $rownum: $nr"

#echo "Row $i:"

#cut -f2 | awk -F"," ' $58=="" ' $1 | wc -l

perl ~/code/code_perl/load_zeabase_snps.pl -H localhost -D zea -i <(cut -f1,$i WEMA_1017_hmp_snp_1.txt) -p GBS_Cornell_Biotech -g WEMA-1017 < ~/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/database_user_name_pd2.txt 

done 


