# ~/code/code_bash_shell/Replace_unbalanced_pedigree_line.sh makumbi_pheno_154trials_backup_updated_line_number.csv




while read line; do

#LineN=`echo "$line" | awk '{print $1}'`


#nl makumbi.pheno.154trials_original.csv | grep "$LineN" | cut -d"," -f4,13,58,59

#Output=`./a.out "$pedigree"`

if echo "$line" | grep -qi -e 41730 -e 41845 -e 41965 -e 42013 -e 42152 -e 42223 -e 42295 -e 42377 -e 42474 -e 42657 -e 42740 -e 42822 -e 42868 -e 42972 -e 43110 -e 43218 -e 43306 -e 43375 -e 44008 -e 44058
then 
echo "$line" | cut -f2 | awk -v OFS="," -F"," '{$13="([[CML202/CML442//[DTP2WC4H255-1-2-2-BB/[[NAW5867/P30-SR]-111-2/[NAW5867/P30-SR]-25-1]-8-1-1-B-1]-1-2-2-B]-1-1-1-1-BBB-B/[CML442/CML197//[TUXPSEQ]C1F2/P49-SR]F2-45-7-3-2-BBB]-2-1-1-1-1-B*4-B)DH3-B//CML312/CML442";$58="([[CML202/CML442//[DTP2WC4H255-1-2-2-BB/[[NAW5867/P30-SR]-111-2/[NAW5867/P30-SR]-25-1]-8-1-1-B-1]-1-2-2-B]-1-1-1-1-BBB-B/[CML442/CML197//[TUXPSEQ]C1F2/P49-SR]F2-45-7-3-2-BBB]-2-1-1-1-1-B*4-B)DH3-B";print;}'
elif echo "$line" | grep -qi -e 41788 -e 41850 -e 41914 -e 42005 -e 42087 -e 42272 -e 42279 -e 42449 -e 42477 -e 42566 -e 42685 -e 42843 -e 42928 -e 42977 -e 43061 -e 43167 -e 43249 -e 43353 -e 44007 -e 44069
then 
echo "$line" | cut -f2 | awk -v OFS="," -F"," '{$13="([[CML202/CML442//[DTP2WC4H255-1-2-2-BB/[[NAW5867/P30-SR]-111-2/[NAW5867/P30-SR]-25-1]-8-1-1-B-1]-1-2-2-B]-1-1-1-1-BBB-B/[CML442/CML197//[TUXPSEQ]C1F2/P49-SR]F2-45-7-3-2-BBB]-2-1-1-1-1-B*4-B)DH3-B//CML395/CML444";$58="([[CML202/CML442//[DTP2WC4H255-1-2-2-BB/[[NAW5867/P30-SR]-111-2/[NAW5867/P30-SR]-25-1]-8-1-1-B-1]-1-2-2-B]-1-1-1-1-BBB-B/[CML442/CML197//[TUXPSEQ]C1F2/P49-SR]F2-45-7-3-2-BBB]-2-1-1-1-1-B*4-B)DH3-B";print;}'
elif echo "$line" | grep -qi -e 25461
then 
echo "$line" | cut -f2 | awk -v OFS="," -F"," '{$13="(CML440/CML144//CML159//POOL15QPMSR)-B-29-B/SUSUMA";print;}'
elif echo "$line" | grep -qi -e 14975 -e 15183 -e 15390 -e 15818 -e 15874 -e 16095 -e 16334 -e 16555 -e 17097
then
echo "$line" | cut -f2 | awk -v OFS="," -F"," '{$13="(ECA-EE-DLN-PL1-1/PL15QPMC7SRC1F2//POOL15QPMSR)-B-24-B//CML144/CML159-B-16-B";print;}'
elif echo "$line" | grep -qi -e 36829 -e 37034 -e 37483 -e 37698 -e 38065 -e 38286 -e 38479 -e 38852  
then
echo "$line" |cut -f2 | awk -v OFS="," -F"," '{$13="(MATUBA#1-B1/EECOMP./Katumani/KATUMANI36-8-1/ECA-EE-POP1)-B-B-1/ECA-EE-55";$58="(MATUBA#1-B1/EECOMP./Katumani/KATUMANI36-8-1/ECA-EE-POP1)-B-B-1";print;}'
elif echo "$line" | grep -qi -e 35290  
then
echo "$line" |cut -f2 | awk -v OFS="," -F"," '{$58="(TZLCOMP3-168-2-5-#/TZEESRW1-B1/EECOMP./Katumani/KATUMANI35-11-1/ECA-EE-POP1)-B-B-6-1-B-#";print;}'
elif echo "$line" | grep -qi -e 35304  
then
echo "$line" |cut -f2 | awk -v OFS="," -F"," '{$58="(P43SRC9FS100-1-1-8#1/TZEESRW1-B1/EECOMP./Katumani/KATUMANI21-8-4/ECA-EE-POP1)-B-B-3-9-B-#-B";print;}'
elif echo "$line" | grep -qi -e 25875  
then
echo "$line" |cut -f2 | awk -v OFS="," -F"," '{$58="(P43SRC9FS100-1-1-8#1/TZEESRW1-B1/EECOMP./Katumani/KATUMANI30-10-1/ECA-EE-POP1)-B-B-3-5-B-#";print;}'
else
echo "$line" |cut -f2 | awk -v OFS="," -F"," '{print;}'
fi


#if echo "$pedigree" | grep -qi '//'
#then
#echo "$pedigree" | awk -F"//" '{print $1}'  >> file_pedigree_line_part.txt
#echo "$pedigree" | awk -F"//" '{print $2}'  >> file_pedigree_tester_part.txt
#else 
#echo "$pedigree" >> file_pedigree_line_part.txt
#echo "unknown"   >> file_pedigree_tester_part.txt
#fi

#acc_with_tester[$i]=${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]}

#acc_with_tester=(${acc_with_tester[@]} ${acc1[$i]}_tester_${acc2[$1]}_${acc3[$1]})
#done

#echo "$pedigree"

#cat "$pedigree" >> file_pedigree.txt

#LineName=`echo "$line"|awk '{print $2}'`
#echo "$LineName"

#cat "$LineName" >> file_LineName.txt

#tester=`echo "$line"|awk '{print $3}'`
#echo "$tester"
#cat "$tester" >> file_tester.txt


#echo -e "\n"

#trn_ped=`wc -l "$pedigree" | awk -F" " '{print $1}'`
#trn_line=`wc -l "$LineName" | awk -F" " '{print $1}'`
#trn_tester=`wc -l "$tester" | awk -F" " '{print $1}'`

#nbrn_ped=`grep -cv "^\s*$" "$pedigree"`
#nbrn_line=`grep -cv "^\s*$" "$LineName"`
#nbrn_tester=`grep -cv "^\s*$" "$tester"`

#brn_ped=`grep -c "^\s*$" "$pedigree"`
#brn_line=`grep -c "^\s*$" "$LineName"`
#brn_tester=`grep -c "^\s*$" "$tester"`

#echo -e "$trn_ped\t$nbrn_ped\t$brn_ped"
#echo -e "$trn_line\t$nbrn_line\t$brn_line"

#echo -e "$trn_tester\t$nbrn_tester\t$brn_tester"


#grep -cv "^\s*$" <(comm -3 <(tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_pedigree.csv | awk -F"//" '{print $1}') <(tail -n +3 single_trial_3WHYB-2010-15-1_rep1_1_Line.csv | awk -F"/t" '{print $1}'))

done < $1