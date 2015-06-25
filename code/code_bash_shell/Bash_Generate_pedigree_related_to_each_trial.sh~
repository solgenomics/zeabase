#~/code/code_bash_shell/Generate_pedigree_related_to_each_trial.sh 3WHYB-2010-15-1_accession.txt

echo -e "accession_name\tpedigree"

while read line; do

#ut=`echo "$line" | grep -c _`

ut=(`echo "$line"| grep _ -b -o | cut -d":" -f1`)

nm=${#ut[@]}

if [[ $nm -eq 2 ]]
then

    a=${ut[0]}
    b=${ut[1]}

    if [[ $a -eq 6 ]]
    then

	aa=$(($a+2))

	pedigreepart1=`echo "$line" | cut -c$aa-$b`
#aa=`expr ${ut[0]}+1`
bb=$(($b+2))
	pedigreepart2=`echo "$line" | cut -c$bb-`
	echo -e "$line\t$pedigreepart1///$pedigreepart2"
	
    else

	pedigreepart1=`echo "$line" | cut -c1-$a`
#aa=`expr ${ut[0]}+1`
	aa=$(($a+2))
	pedigreepart2=`echo "$line" | cut -c$aa-`
	echo -e "$line\t$pedigreepart1///$pedigreepart2"
#echo -e "$line\t$a\t$b"
    fi
fi


if [[ $nm -eq 3 ]]
then
a=${ut[0]}
b=${ut[1]}
c=${ut[2]}
#echo -e "$line\t$a\t$b\t$c"
pedigreepart1=`echo "$line" | cut -c1-$a`
#aa=`expr ${ut[0]}+1`
aa=$(($a+2))
pedigreepart2=`echo "$line" | cut -c$aa-`
echo -e "$line\t$pedigreepart1///$pedigreepart2"
fi 







#echo "accession_name" > "$ut"_accession.txt

#awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f2 | sort -u > "$ut"_accession0.txt
#awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f3 | sort -u >> "$ut"_accession0.txt 
#awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f5 | sort -u >> "$ut"_accession0.txt
#awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f6 | sort -u >> "$ut"_accession0.txt
#awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f7 | sort -u >> "$ut"_accession0.txt
#awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f8 | grep -v / | sort -u >> "$ut"_accession0.txt

#awk -F"\t" '{print $1}' "$ut"_accession0.txt | sort -u >> "$ut"_accession.txt

#echo "accession_name" > "$ut"_pedigree.txt

#echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut"_accession.txt

done < $1