#~/code/code_bash_shell/Generate_accession_name_related_to_each_trial.sh unique_trial_name_153.txt

while read line; do

ut=`echo "$line"`
echo "$ut"

echo "accession_name" > "$ut"_accession.txt

awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f2 | sort -u > "$ut"_accession0.txt
awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f3 | sort -u >> "$ut"_accession0.txt 
awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f5 | sort -u >> "$ut"_accession0.txt
awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f6 | sort -u >> "$ut"_accession0.txt
awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f7 | sort -u >> "$ut"_accession0.txt
awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_new_tester_pedigree.txt | cut -f8 | grep -v / | sort -u >> "$ut"_accession0.txt

awk -F"\t" '{print $1}' "$ut"_accession0.txt | sort -u >> "$ut"_accession.txt

#echo "accession_name" > "$ut"_accession.txt

#echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut"_accession.txt

done < $1