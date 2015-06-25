
#for i in {2..955691}
#do
 
#paste <(nl "WEMA GBS 1008.hmp.txt" | sed -n "$i","$i"p | cut -f1-3) <(sed -n "$i","$i"p "WEMA GBS 1008.hmp.txt" | c#ut -f12-110 | tr "\t" "\n" | sort -u | awk '{printf("%s\t",$0)} END {print ""}')


#done


while read line; do

#paste <(echo "$line" | cut -f1) <(echo "$line" | cut -f2- | tr "\t" "\n" | sort -u | awk '{printf("%s\t",$0)} END {print ""}')

array0=(A C G T)
array=(`echo "$line" | cut -f2 | awk '{n=split($0,numbers,"/")} {print numbers[1],numbers[2],numbers[3],numbers[4]}'`)

#echo -e "${#array[*]}\t${array[@]}"

#echo ${array[@]} | grep -e A -e C -e G -e T

#C=($(comm -12 <(echo "${array[@]}") <(echo "${array0[@]}")))

sorted_array=($(for each in ${array[@]}; do echo $each; done | sort))

acgt_array=(`comm -12 <(echo "${array0[@]}" | tr " " "\n") <(echo "${sorted_array[@]}"| tr " " "\n")`)


echo -e "${#sorted_array[*]}\t${sorted_array[@]}\t${acgt_array[@]}\t${acgt_array[0]}"



#${Unix[1]}

#echo -e "\n"

#
#echo "${C[@]}" 
#| LC_ALL=C sort


done < $1


#awk -F"\t" '$1 == 2 { print $1"\t"$2 }' WEMA_GBS_1008_hmp_maker6_output.txt


#cut -f2 WEMA_GBS_1008_hmp_maker6.txt | awk '{split($0,numbers,"/")} {print numbers[1],numbers[2],numbers[3],numbe#rs[4]}'

 



#numbers2=($(for each in ${numbers[@]}; do echo $each; done | sort))} {print numbers2[1],numbers2[2]}' 


#phonetic_alpha=($(for each in ${phonetic_alpha[@]}; do echo $each; done | sort))
       


#readarray -t eCollection < <(cut -f2 WEMA_GBS_1008_hmp_maker6.txt) | printf '%s\n' "${eCollection[0]}"


#array=(C G A T - NA /)

#readarray -t sorted < <(for a in "${array[@]}"; do echo "$a"; done | sort)

#readarray -t sorted < <(printf '%s\0' "${array[@]}" | sort -z | xargs -0n1)
#for a in "${sorted[@]}"; do echo "$a"; done

#cut -f2 WEMA_GBS_1008_hmp_maker6.txt | awk '{split($0,array,"/");printf '%s\0' "${array[@]}"}'

#for a in "${sorted[@]}"; do echo "$a"; done   

paste <(tail -n +2 "WEMA GBS 1008.hmp.txt" | cut -f1,2,3) <(awk -F"\t" '{ print $1,$2,$3,$4,$5 }' WEMA_GBS_1008_hmp_locus_allele.txt) | more

