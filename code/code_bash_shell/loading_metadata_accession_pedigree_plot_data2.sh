#f11=`ls "$1" | awk -F . '{print $1}'`

#metadata
echo "$1"

#Exp
echo "$2"

#Location
echo "$3"

#accession_file
echo "$4"

#accession_pedigree_file
echo "$5"

#rep1
echo "$6"

#rep2
echo "$7"

f11=`ls "$1" | awk -F . '{print $1}'`
echo "$f11"

#(head -n 2 "$1" && tail -n +3 "$1" | sort -n -k1) > "$f11"_sorted.csv


#cut -f5 "Clean data 6x1008_WET10B-EVALTC-08-2_rep2_accession.csv" > "Clean data 6x1008_WET10B-EVALTC-08-accession.csv"

#paste "$f11"_sorted.csv "Clean data 6x1008_WET10B-EVALTC-08-accession.csv" > "$f11"_sorted_2.csv

#awk '{FS="," ; print $1,$2,$3,$4,$5}' "$f11"_sorted_2.csv >  "$f11"_accession.csv
#'{ FS = ":" ; print $1 }'

#awk -F"\t" '{print $1,"\t",$2,"\t",$3,"\t",$4,"\t",$13,"\t",$6,"\t",$7,"\t",$8,"\t",$9,"\t",$10,"\t",$11,"\t",$12}'  "$f11"_sorted_2.csv > "$f11"_accession2be_formated.csv

#sed 's/+AF8-/_/g' "$f11"_accession2be_formated.csv > "$f11"_accession.csv

# ~/code/code_bash_shell/sort_merge_accession_2_file.sh "Clean data 6x1008_WET10B-EVALTC-08-4_rep1.csv"
#vi "Clean data 6x1008_WET10B-EVALTC-08-4_rep1_accession.csv"

perl ~/code/code_perl/LoadScriptForTonyMetadata.pl -H localhost -D zea -i "$1"

perl ~/code/loading_script/load_accessions_in_database_aimin.pl -H localhost -D zea -i "$4" -e "$2" -c "$3"

perl ~/code/code_perl/load_pedigrees_in_database_aimin.pl -H localhost -D zea -i "$5" -e "$2" -c "$3"

#~/code/code_bash_shell/sort_merge_accession_2_file.sh "$f11"_rep1.csv
#vi "Clean data 6x1008_WET10B-EVALTC-08-4_rep1_accession.cs

cp "$6" "$f11".csv

perl ~/code/code_perl/LoadScriptForTonydata.pl -H localhost -D zea -i "$f11".csv

#~/code/code_bash_shell/sort_merge_accession_2_file.sh "$f11"_rep2.csv
#vi "Clean data 6x1008_WET10B-EVALTC-08-4_rep1_accession.cs

#cp "$f11"_rep2_accession.csv "$f11".csv

cp "$7" "$f11".csv

perl ~/code/code_perl/LoadScriptForTonydata.pl -H localhost -D zea -i "$f11".csv