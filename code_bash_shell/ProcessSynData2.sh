<<start

file_name=('synatc1.txt' 'synatc2.txt' 'synbtc1.txt' 'synbtc2.txt' 'synbtc3.txt')

echo ${#file_name[@]} 

tLen=${#file_name[@]}

# use for loop read all nameservers
for (( i=0; i<${tLen}; i++ ));
do
  one_file=${file_name[$i]}

  echo "$one_file"

  
 file_name2=`echo "$one_file" | awk -F . '{print $1}'`;

 echo "$file_name2"_title.txt;

  
 sed -n -e1,1p "$one_file" | tr "\t" "\n" | wc -l

#done

sed -n -e1,1p "$one_file" | tr '\t' '\n' | nl
#sed -n -e1,1p synatc_2_part.txt | tr '\t' '\n' | nl  

#sed -n -e1,1p synbtc_1_part.txt | tr '\t' '\n' | nl  
#sed -n -e1,1p synbtc_2_part.txt | tr '\t' '\n' | nl
#sed -n -e1,1p synbtc_3_part.txt | tr '\t' '\n' | nl


cut -f17  "$one_file" | sort -u
echo -e "\n"

cut -f19  "$one_file" | sort -u
echo -e "\n" 

cut -f21  "$one_file" | sort -u
echo -e "\n"

cut -f27  "$one_file" | sort -u
echo -e "\n"

cut -f28  "$one_file" | sort -u
echo -e "\n"

cut -f29  "$one_file" | sort -u
echo -e "\n"

cut -f30  "$one_file" | sort -u
echo -e "\n"

cut -f31  "$one_file" | sort -u
echo -e "\n"

cut -f32  "$one_file" | sort -u
echo -e "\n"

cut -f33  "$one_file" | sort -u
echo -e "\n"

done


for (( i=1; i<30; i++ ));
do
  #one_file=${file_name[$i]}
  #echo "$one_file"
  cut -f"$i" syn_trait_co.txt
done

#paste (/home/aiminy/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew)

paste <(sed -n -e1,2p /home/aiminy/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/EIHYB-2011-4-3_rep1_plotdata.csv | cut -f1-7) <(sed -n -e1,2p syn_trait_co.txt) <(sed -n -e1,2p /home/aiminy/DataFromVahid/Data4EachTrialAfterQC/Data4EachTrialAfterQCNew/EIHYB-2011-4-3_rep1_plotdata.csv | cut -f47)

paste <(sed -n -e1,1p synatc1.txt | tr "\t" "\n" | nl) <(sed -n -e1,1p synatc2.txt | tr "\t" "\n" | nl) <(sed -n -e1,1p synbtc1.txt | tr "\t" "\n" | nl) <(sed -n -e1,1p synbtc2.txt | tr "\t" "\n" | nl) <(sed -n -e1,1p synbtc3.txt | tr "\t" "\n" | nl)

awk synatc_1_part.txt {print } 

#((paste <(sed -n -e1,1p "$one_file" | awk  -v OFS="\t" -F"\t" '{print $1,$2,$3,$4,"DESIG","NOPLT","NOSV"}') <(sed -n -e1,1p "$one_file" | cut -f5-)) && (paste <(tail -n +2 "$one_file" | awk  -v OFS="\t" -F"\t" '{print $1,$2,$3,$4," "," "," "}') <(tail -n +2 "$one_file" | cut -f5-))) > "$file_name2"_title.txt;

start
