#sed -n 1,1p "WEMA 1017-2.hmp.txt"  

#OLD_IFS=$IFS
#IFS=$'\t'

#echo -e "marker" | 

#(sed -n 1,1p "WEMA 1017-2.hmp.txt" | cut -f1,12- | tr "\t" "\n" | awk -F":" '{print "WEMA_6x1017_"$1}'| tr "\n" "\t" | awk -F"\t" '{OFS="\t";$1="marker"; print;}' && tail -n +2 "WEMA 1017-2.hmp.txt" | cut -f1,12- ) > WEMA_1017_2_snp.txt

cn=`sed -n 2,2p WEMA_1017_2_snp.txt | tr "\t" "\n" | wc -l`
echo "$cn"


for (( i=2; i <= 90; i++ ))
do
#echo "Random number $i: $RANDOM"

#nr=`echo "$line" | tr "\t" "\n" | wc -l`
#nr=`sed -n -e"$i","$i"p $1 | tr "," "\n" | wc -l`

#echo "Row $rownum: $nr"

#echo "Row $i:"

#cut -f2 | awk -F"," ' $58=="" ' $1 | wc -l

perl ~/code/code_perl/load_zeabase_snps.pl -H localhost -D zea -i <(cut -f1,$i WEMA_1017_2_snp.txt) -p GBS_Cornell_Biotech -g WEMA-1017 < ~/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/database_user_name_pd2.txt 

done 


#IFS=$OLD_IFS

#acc2=("marker""\t"$acc)
#echo ${acc2[@]}
#marker


#MARS-WEMA_293095:C21ABACXX:5:250155645

#sed -n 1,1p "WEMA 1017-2.hmp.txt" | cut -f12- 

#sed -n 1,1p "WEMA 1017-2.hmp.txt" | tr "\t" "\n" | wc -l
