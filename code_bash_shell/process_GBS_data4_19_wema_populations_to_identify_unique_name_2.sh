while read line; do

path0=`echo "$line" | awk -F" " '{print $1}'`
path1=`echo "$line" | awk -F" " '{print $2}'`

path2=`echo -e "$path0\ $path1"` 

echo "$path2"

filedir="$HOME/Dropbox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2"

#ls ~/DataFromDropBox/GatesGSmaize/

path3=`eval ls $filedir | grep hmp.txt`
#path3=`eval ls $filedir`


echo $path3 

#grep hmp.txt $path3

file1=`echo "$path3" | sed -e 's/ /\\\ /g' | sed -n 1,1p`
#echo "$file1"
file11="$HOME/Dropbox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2/$file1"
echo "$file11"
eval wc -l "$file11"

ns_unsorted1=`eval sed -n 1,1p "$file11" | tr "\t" "\n" | tail -n +12 | cut -d":" -f1 | wc -l`

ns_sorted1=`eval sed -n 1,1p "$file11" | sed -n 1,1p | tr "\t" "\n" | tail -n +12 | cut -d":" -f1 | sort -u | wc -l`

#echo -e "$ns_unsorted1\t$ns_sorted1\n"


#echo "$file11" | awk -F" " '{print $7;}'
 
#snp_file1=`echo "WEMA_"$path1"_2_snp.txt"`

#file111=`echo "$file11" | awk -F"." '{print $1}'`

#echo "$file111"

#file_snp="$file111"_snp.txt


#(eval sed -n 1,1p "$file11" | cut -f1,12- | tr "\t" "\n" |  awk -F":" -vpath1="$path1" '{print "WEMA_"path1"_"$1}' | tr "\n" "\t" | awk -F"\t" '{OFS="\t";$1="marker"; print;}' && eval tail -n +2 "$file11" | cut -f1,12-) > "$snp_file1"


#cn=`sed -n 2,2p "$snp_file1" | tr "\t" "\n" | wc -l`
 
#echo "$snp_file1"
#pop1=`echo "WEMA_$path1"` 
#echo "$pop1"

#for (( i=2; i <= $cn; i++ ))
#do
#echo "$i"
#perl $HOME/code/code_perl/load_zeabase_snps.pl -H localhost -D zea -i <(cut -f1,$i "$snp_file1") -p GBS_Cornell_Biotech -g "$pop1" < $HOME/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/database_user_name_pd2.txt

#done

#(eval "$file11" | sed -n 1,1p | cut -f1,12- | tr "\t" "\n" | awk -F":" -vpath1="$path1" '{print "WEMA_"path1"_"$1}'| tr "\n" "\t" | awk -F"\t" '{OFS="\t";$1="marker"; print;}' && eval "$file11" | tail -n +2 | cut -f1,12- )  

#echo "OK"

file2=`echo "$path3" | sed -e 's/ /\\\ /g' | sed -n 2,2p`
#echo "$file2"
file22="$HOME/Dropbox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2/$file2"
echo "$file22"
eval wc -l "$file22"

ns_unsorted2=`eval sed -n 1,1p "$file22" | tr "\t" "\n" | tail -n +12 | cut -d":" -f1 | wc -l`

ns_sorted2=`eval sed -n 1,1p "$file22" | tr "\t" "\n" | tail -n +12 | cut -d":" -f1 | sort -u | wc -l`

#echo -e "$ns_unsorted2\t$ns_sorted2\n"

ns_total=$(( $ns_unsorted1 + $ns_unsorted2 ))
ns=$(( $ns_sorted1 + $ns_sorted2 ))

echo -e "$path0"_"$path1 has $ns_total samples totally"
echo -e "$path0"_"$path1 has $ns unique samples\n"

#snp_file2=`echo "WEMA_"$path1"_snp.txt"`

#(eval sed -n 1,1p "$file11" | cut -f1,12- | tr "\t" "\n" |  awk -F":" -vpath1="$path1" '{print "WEMA_"path1"_"$1}' | tr "\n" "\t" | awk -F"\t" '{OFS="\t";$1="marker"; print;}' && eval tail -n +2 "$file11" | cut -f1,12-) > "$snp_file2" 

#cn=`sed -n 2,2p "$snp_file2" | tr "\t" "\n" | wc -l`
 

#echo "$snp_file2"
#pop2=`echo "WEMA_$path1"`
#echo "$pop2"

#for (( i=2; i <= $cn; i++ ))
#do
#echo "$i"

#perl $HOME/code/code_perl/load_zeabase_snps.pl -H localhost -D zea -i <(cut -f1,$i "$snp_file2") -p GBS_Cornell_Biotech -g "$pop2" < $HOME/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/database_user_name_pd2.txt 

#done

#echo "$file1"
#file11="$HOME/DataFromDropBox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2/$file1"
#eval wc -l "$file11"

#echo "$path3" | sed -n 2,2p | sed -e "s/ /\\\ /g"
#echo "$file2"
#file22="$HOME/DataFromDropBox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2/$file2"
#eval wc -l "$file22"

#echo -e "1stFile"
#echo "$path3" | awk -F"\n" '{print $1}' | sed -n 1,1p

#echo "$path3" | awk -F"\n" '{print $1}' | sed -n 1,1p | cut -d' ' -f1
#echo "$path3" | awk -F"\n" '{print $1}' | sed -n 1,1p | cut -d' ' -f2


#file2=`echo "$file0\ $file1"`
#file3="$HOME/DataFromDropBox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2/$file2"

#echo "$file3"

#eval wc -l $file3

#eval (sed -n 1,1p "WEMA 1017-2.hmp.txt" | cut -f1,12- | tr "\t" "\n" | awk -F":" '{print "WEMA_6x1017_"$1}'| tr "\n" "\t" | awk -F"\t" '{OFS="\t";$1="marker"; print;}' && tail -n +2 "WEMA 1017-2.hmp.txt" | cut -f1,12- ) > WEMA_1017_2_s#np.txt

#echo -e "2ndFile"
#echo "$path3" | awk -F"\n" '{print $1}' | sed -n 2,2p

#file0=`echo "$path3" | awk -F"\n" '{print $1}' | sed -n 2,2p | cut -d' ' -f1`
#file1=`echo "$path3" | awk -F"\n" '{print $1}' | sed -n 2,2p | cut -d' ' -f2`

#file2=`echo "$file0\ $file1"`
#file3="$HOME/DataFromDropBox/GatesGSmaize/19\ WEMA\ MARS\ Populations\ GBS/$path2/$file2"

#echo "$file3"

#eval wc -l $file3

#firstfile0=`echo "$path3" | awk -F"\n" '{print $1}' | sed -n 1,1p | awk -F" " '{print $1}'`
#firstfile1=`echo "$path3" | awk -F"\n" '{print $1}' | sed -n 1,1p | awk -F" " '{print $2}'`

#echo "$firstfile0\ $firstfile" 

#echo "$path3" | awk -F"\n" '{print $1}' | sed -n 2,2p

#filename0=`echo "$path3" | awk -F" " '{print $1}'`
#filename1=`echo "$path3" | awk -F" " '{print $2}'`
#filename2=`echo "$path3" | awk -F" " '{print $3}'`
#filename3=`echo "$path3" | awk -F" " '{print $4}'`


#echo -e "$filename0\ $filename1"
#echo -e "$filename2\ $filename3"

done < $1