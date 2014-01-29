<<COMMENTS
awk '{
       for (f = 1; f <= NF; f++) { a[NR, f] = $f } 
     }
     NF > nf { nf = NF }
     END {
       for (f = 1; f <= nf; f++) {
           for (r = 1; r <= NR; r++) {
               printf a[r, f] (r==NR ? RS : FS)
           }
       }
    }' < $1


(sed -n -e1,1p makumbi.pheno.154trials_formated.csv | cut -d"," -f17-55 && cat trait_name2.txt )

paste 
(sed -n -e1,1p makumbi.pheno.154trials_formated.csv | cut -d"," -f1-16 && sed -n -e2,2p trait_name2.txt && sed -n -e1,1p makumbi.pheno.154trials_formated.csv | cut -d"," -f56-59) > trait_name3.txt

paste 

sed -n -e1,1p makumbi.pheno.154trials_formated.csv | cut -d"," -f1-16  > title_154trials_1_16.txt
sed -n -e2,2p trait_name2.txt > trait_name2_2ndrow.txt 
sed -n -e1,1p makumbi.pheno.154trials_formated.csv | cut -d"," -f56-59 > title_154trials_56_59.txt

paste  title_154trials_1_16.txt trait_name2_2ndrow.txt title_154trials_56_59.txt > trait_name3.txt

(sed -n -e1,1p makumbi.pheno.154trials_formated.csv | cut -d"," -f1-59 && cat trait_name3.txt ) > trait_name4.txt

#head

(head -2 trait_name_co_12_21_13.txt && tail -n +2 makumbi.pheno.154trials_2_working_on_0.csv) > makumbi.pheno.154trials_CO.csv

tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f1  | sort -u | wc -l
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f4  | sort -u | wc -l
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f13 | sort -u | wc -l
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f58 | sort -u | wc -l
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f59 | sort -u | wc -l

tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f1  | sort -u
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f4  | sort -u
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f13 | sort -u
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f58 | sort -u
tail -n +3 makumbi.pheno.154trials_CO.csv | cut -f59 | sort -u

COMMENTS

while read line; do

f1=`echo "$line"`

echo "$f1"

#grep "$f1" makumbi.pheno.154trials_CO.csv | wc -l

(head -2 makumbi.pheno.154trials_CO.csv && grep "$f1" makumbi.pheno.154trials_CO.csv) > single_trial_"$f1".csv

#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

done < $1

#COMMENTS



<<COMMENTS
while read line; do

f1=`echo "$line"`

echo "$f1"

#grep "$f1" makumbi.pheno.154trials_CO.csv | wc -l


(head -2 makumbi.pheno.154trials_CO.csv && grep "$f1" makumbi.pheno.154trials_CO.csv) > single_trial_"$f1".csv

#cut -f7 "$f1" | sort -u | wc -l 
#cut -f7 "$f1" | sort -nu 

#cut -f8 "$f1" | sort -u | wc -l 
#cut -f8 "$f1" | sort -nu 

#pop_name=`echo "$f1"| cut -c 12-17`

#echo -e "\n";

done < $1

COMMENTS


(head -2 single_trial_3WHYB-2010-15-1.csv && awk -F"\t" '$8 == "1" { print;}' single_trial_3WHYB-2010-15-1.csv) > single_trial_3WHYB-2010-15-1_rep1.csv

#sort head 
(head -2 single_trial_3WHYB-2010-15-1_rep1.csv && tail -n +3  single_trial_3WHYB-2010-15-1_rep1.csv | sort -unk7) > single_trial_3WHYB-2010-15-1_rep1_sorted_unique.csv

(head -2 single_trial_3WHYB-2010-15-1_rep1.csv && tail -n +3  single_trial_3WHYB-2010-15-1_rep1.csv | sort -nk7) > single_trial_3WHYB-2010-15-1_rep1_sorted.csv

#awk -F"\t" '$8 == "1" { print $7"\t"$8 }' single_trial_3WHYB-2010-15-1.csv | sort -n

nl single_trial_3WHYB-2010-15-1_rep1_sorted.csv > single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv

(head -2 single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv && sed -n '3~2p' single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv) | cut -f 2- > single_trial_3WHYB-2010-15-1_rep1_1.csv
(head -2 single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv && sed -n '4~2p' single_trial_3WHYB-2010-15-1_rep1_sorted_nl.csv) | cut -f 2- > single_trial_3WHYB-2010-15-1_rep1_2.csv

#awk -F"\t" '{FS="\t";$1=""; print;}' single_trial_3WHYB-2010-15-1_rep1_sorted_nl_e2.csv > single_trial_3WHYB-2010-15-1_rep1_sorted_nl_e2_rmC1.csv
#awk -F"\t" '{FS="\t";$1=""; print;}' single_trial_3WHYB-2010-15-1_rep1_sorted_nl_e1.csv > single_trial_3WHYB-2010-15-1_rep1_sorted_nl_e1_rmC1.csv


#cut -d'\t' -f 2- single_trial_3WHYB-2010-15-1_rep1_sorted_nl_e2.csv > single_trial_3WHYB-2010-15-1_rep1_sorted_nl_e2_rmC1.csv

#cut -f 2- single_trial_3WHYB-2010-15-1_rep1_nl_1.csv > single_trial_3WHYB-2010-15-1_rep1_nl_1_rmC1.csv
#cut -f 2- single_trial_3WHYB-2010-15-1_rep1_nl_2.csv > single_trial_3WHYB-2010-15-1_rep1_nl_2_rmC1.csv

cut -f13 single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv
cut -f13 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_pedigree.csv 

cut -f58 single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_Line.csv
cut -f58 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_Line.csv 

cut -f59 single_trial_3WHYB-2010-15-1_rep1_1.csv > single_trial_3WHYB-2010-15-1_rep1_1_Tester.csv
cut -f59 single_trial_3WHYB-2010-15-1_rep1_2.csv > single_trial_3WHYB-2010-15-1_rep1_2_Tester.csv


diff single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv single_trial_3WHYB-2010-15-1_rep1_2_pedigree.csv
diff single_trial_3WHYB-2010-15-1_rep1_1_Line.csv single_trial_3WHYB-2010-15-1_rep1_1_Line.csv
diff single_trial_3WHYB-2010-15-1_rep1_1_Tester.csv single_trial_3WHYB-2010-15-1_rep1_2_Tester.csv



