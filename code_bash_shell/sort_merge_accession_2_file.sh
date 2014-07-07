f11=`ls "$1" | awk -F . '{print $1}'`
echo "$f11"

#ls "$1" | awk -F . '{print $1}'

(head -n 2 "$1" && tail -n +3 "$1" | sort -n -k1) > "$f11"_sorted.csv


cut -f5 "Clean data 6x1008_WET10B-EVALTC-08-2_rep2_accession.csv" > "Clean data 6x1008_WET10B-EVALTC-08-accession.csv"

paste "$f11"_sorted.csv "Clean data 6x1008_WET10B-EVALTC-08-accession.csv" > "$f11"_sorted_2.csv

#awk '{FS="," ; print $1,$2,$3,$4,$5}' "$f11"_sorted_2.csv >  "$f11"_accession.csv
#'{ FS = ":" ; print $1 }'

awk -F"\t" '{print $1,"\t",$2,"\t",$3,"\t",$4,"\t",$13,"\t",$6,"\t",$7,"\t",$8,"\t",$9,"\t",$10,"\t",$11,"\t",$12}'  "$f11"_sorted_2.csv > "$f11"_accession2be_formated.csv

sed 's/+AF8-/_/g' "$f11"_accession2be_formated.csv > "$f11"_accession.csv