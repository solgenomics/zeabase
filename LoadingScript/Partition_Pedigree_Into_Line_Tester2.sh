# ~/code/code_bash_shell/Partition_Pedigree_Into_Line_Tester3.sh single_trial_EE-SC445-1-1_rep1_sorted.csv
# ~/code/code_bash_shell/Partition_Pedigree_Into_Line_Tester3.sh unique_pedigree.txt

while read line; do

#pedigree=`echo "$line" |cut -f14`
pedigree=`echo "$line" |cut -f1`

if echo "$pedigree" | grep -qi '('
then
    #echo "$pedigree"
    c=(`echo "$pedigree" | grep -b -o \( |cut -d":" -f1`)
    nc=`echo ${c[0]}`

    d=(`echo "$pedigree" | grep -b -o \) |cut -d":" -f1`)
    nd=`expr ${#d[@]}-1`
    ndd=`echo ${d[nd]}`


    if echo "$pedigree" | grep -qi '//'
    then
    a=(`echo "$pedigree" |grep -b -o // |cut -d":" -f1`)
    na=`expr ${#a[@]}-1`
    naa=`echo ${a[$na]}`
    #echo $naa
    naaa=$(($naa+3))
    #echo $naaa
    else
	if echo "$pedigree" | grep -qi '/'
	then
	    b=(`echo "$pedigree" | grep -b -o / |cut -d":" -f1`)
	    nb=`expr ${#b[@]}-1`
	    nbb=`echo ${b[nb]}`
	    #echo $nbb
	    nbbb=$(($nbb+2))
	    #echo $nbbb
	    else
                echo "$pedigree" 
	fi
    fi

    if [[ $naa -ne 0 ]] && [[ $naa > $ndd || $naa < $nc ]]
    then
 	pedigreepart1=`echo "$pedigree" | cut -c1-$naa`
 	pedigreepart2=`echo "$pedigree" | cut -c$naaa-`
 	echo -e "$pedigree\t$pedigreepart1\t$pedigreepart2"
     else
         if [[ $nbb -ne 0 ]] && [[ $nbb > $ndd || $nbb < $nc ]]
         then
	    pedigreepart1=`echo "$pedigree" | cut -c1-$nbb`
 	    pedigreepart2=`echo "$pedigree" | cut -c$nbbb-`
 	    echo -e "$pedigree\t$pedigreepart1\t$pedigreepart2"
 	 fi
    fi
else
    if echo "$pedigree" | grep -qi '//'
    then
	a=(`echo "$pedigree" |grep -b -o // |cut -d":" -f1`)
	na=`expr ${#a[@]}-1`
	naa=`echo ${a[$na]}`
	#echo $naa
	pedigreepart1=`echo "$pedigree" | cut -c1-$naa`
	naaa=$(($naa+3))
	#echo $naaa
	pedigreepart2=`echo "$pedigree" | cut -c$naaa-`
	echo -e "$pedigree\t$pedigreepart1\t$pedigreepart2"
     else
	if echo "$pedigree" | grep -qi '/'
	then
	    b=(`echo "$pedigree" | grep -b -o / |cut -d":" -f1`)
	    nb=`expr ${#b[@]}-1`
	    nbb=`echo ${b[nb]}`
	    #echo $nbb
	    pedigreepart1=`echo "$pedigree" | cut -c1-$nbb`
	    nbbb=$(($nbb+2))
	    #echo $nbbb
	    pedigreepart2=`echo "$pedigree" | cut -c$nbbb-`
	    echo -e "$pedigree\t$pedigreepart1\t$pedigreepart2"
	else
	    echo "$pedigree"
	fi
    fi
fi

#if !(echo "$pedigree" | grep -qi -e '//' -e '/' -e '(' -e ')')

#echo -e "\n"

done < $1