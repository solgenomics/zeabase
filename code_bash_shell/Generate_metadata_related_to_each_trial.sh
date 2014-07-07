#~/code/code_bash_shell/Generate_metadata_related_to_each_trial.sh unique_trial_name_153.txt

while read line; do

ut=`echo "$line"`
echo "$ut"

a=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u | wc -l` 
b=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u | wc -l`
c=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u | wc -l`
d=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u | wc -l`

echo -e "$a\t$b\t$c\t$d"

project_name=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u`
project_description="$project_name"
geo_description=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
planting_date=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u`
fertilizer_date=""
year=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u`
address=""

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > "$ut".cvsmetadata

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut".cvsmetadata

done < $1