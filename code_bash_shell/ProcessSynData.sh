<<EOF
#file_name=('synatc_1_part.txt' 'synatc_2_part.txt' 'synbtc_1_part.txt' 'synbtc_2_part.txt' 'synbtc_3_part.txt');
#ENTRY	REP	BLOCK	PLOT

#ENTRY	REP	BLOCK	PLOT	DESIG	NOPLT	NOSV	mSenescence0_10	fSenescence0_100.1.	fBadHuskCoverNum	fDaysToSilk	fEarAspect1_5	fEarHeightCm	fEarRotTotalNum	fFieldWtGms	fGrainMoisturePer	fGrayLeafSpot1_5.1.	fLeafBlightTurcicum1_5.1.	fNumEars	fPlantAspect1_5	fPlantHeightCm	fPlantStandNo	fRootLodgingNum	fShelledGrainWtGms	fShellPer	fStemLodgingNum	fVirusMaizeStreak1_5.1.	mAnthesisDate	mASI	mBadHuskCoverPer	mEarAspect1_5	mEarHeightCm	mEarPosition	mEarRotTotalPer	mEPPNo	mGrainMoisturePer	mGrainYieldTons_FieldWt	mGrainYieldTons_GrainWt	mGrayLeafSpot1_5	mLeafBlightTurcicum1_5	mPlantAspect1_5	mPlantHeightCm	mPlantStand_NumPerPlot	mRootLodgingPer	mStemLodgingPer	mVirusMaizeStreak1_5	NameOfExperiment

#ENTRY	REP	BLOCK	PLOT	DESIG	NOPLT	NOSV	CO_322:0000012	CO_322:0000012	CO_322:0000150	CO_322:0000031	CO_322:0000018	CO_322:0000017	CO_322:0000068	CO_322:0000147	CO_322:0000033	CO_322:0000088	CO_322:0000092	CO_322:0000021	CO_322:0000011	CO_322:0000007	CO_322:0000063	CO_322:0000034	CO_322:0000005	CO:rs	CO_322:0000035	CO_322:0000100	CO_322:0000030	CO_322:0000001	CO_322:0000150	CO_322:0000018	CO_322:0000017	CO_322:0000020	CO_322:0000068	CO_322:0000021	CO_322:0000033	CO_322:0000005	CO_322:0000147	CO_322:0000088	CO_322:0000092	CO_322:0000011	CO_322:0000007	CO_322:0000063	CO_322:0000034	CO_322:0000035	CO_322:0000100	NameOfExperiment
EOF

<<EOF0

((paste <(sed -n -e1,1p synatc1.txt | awk  -v OFS="\t" -F"\t" '{print "ENTRY","REP","BLOCK","PLOT","DESIG","NOPLT","NOSV"}') <(sed -n -e1,1p synatc1.txt | cut -f12-41,47)) && (paste <(tail -n +2 synatc1.txt | awk  -v OFS="\t" -F"\t" '{print $9,$6,$7,$8,$1," "," "}') <(tail -n +2 synatc1.txt | cut -f12-41,47))) > synatc1_title.txt;
cat syn_trait_co_2.txt synatc1_title.txt >  co_synatc1.txt
cat syn_trait_co_2.txt <(tail -n +2 synatc1_title.txt) > co_synatc1_1.txt


((paste <(sed -n -e1,1p synatc2.txt | awk  -v OFS="\t" -F"\t" '{print "ENTRY","REP","BLOCK","PLOT","DESIG","NOPLT","NOSV"}') <(sed -n -e1,1p synatc2.txt | cut -f12-41,123)) && (paste <(tail -n +2 synatc2.txt | awk  -v OFS="\t" -F"\t" '{print $9,$6,$7,$8,$1," "," "}') <(tail -n +2 synatc2.txt | cut -f12-41,123))) > synatc2_title.txt;
cat syn_trait_co_2.txt synatc2_title.txt >  co_synatc2.txt
cat syn_trait_co_2.txt <(tail -n +2 synatc2_title.txt) > co_synatc2_1.txt


((paste <(sed -n -e1,1p synbtc1.txt | awk  -v OFS="\t" -F"\t" '{print "ENTRY","REP","BLOCK","PLOT","DESIG","NOPLT","NOSV"}') <(sed -n -e1,1p synbtc1.txt | cut -f11-40,122)) && (paste <(tail -n +2 synbtc1.txt | awk  -v OFS="\t" -F"\t" '{print $8,$5,$6,$7,$1," "," "}') <(tail -n +2 synbtc1.txt | cut -f11-40,122))) > synbtc1_title.txt;
cat syn_trait_co_2.txt synbtc1_title.txt >  co_synbtc1.txt
cat syn_trait_co_2.txt <(tail -n +2 synbtc1_title.txt) > co_synbtc1_1.txt


((paste <(sed -n -e1,1p synbtc2.txt | awk  -v OFS="\t" -F"\t" '{print "ENTRY","REP","BLOCK","PLOT","DESIG","NOPLT","NOSV"}') <(sed -n -e1,1p synbtc2.txt | cut -f11-40,122)) && (paste <(tail -n +2 synbtc2.txt | awk  -v OFS="\t" -F"\t" '{print $8,$5,$6,$7,$1," "," "}') <(tail -n +2 synbtc2.txt | cut -f11-40,122))) > synbtc2_title.txt;
cat syn_trait_co_2.txt synbtc2_title.txt >  co_synbtc2.txt
cat syn_trait_co_2.txt <(tail -n +2 synbtc2_title.txt) > co_synbtc2_1.txt


((paste <(sed -n -e1,1p synbtc3.txt | awk  -v OFS="\t" -F"\t" '{print "ENTRY","REP","BLOCK","PLOT","DESIG","NOPLT","NOSV"}') <(sed -n -e1,1p synbtc3.txt | cut -f11-40,122)) && (paste <(tail -n +2 synbtc3.txt | awk  -v OFS="\t" -F"\t" '{print $8,$5,$6,$7,$1," "," "}') <(tail -n +2 synbtc3.txt | cut -f11-40,122))) > synbtc3_title.txt;
cat syn_trait_co_2.txt synbtc3_title.txt >  co_synbtc3.txt
cat syn_trait_co_2.txt <(tail -n +2 synbtc3_title.txt) > co_synbtc3_1.txt

SYNATC-1-1
SYNATC-1-2
SYNATC-1-3
SYNATC-1-4
SYNATC-1-7

head -2 co_synatc1_1.txt

EOF0


<<EOF1

Exp_name=(co_synatc1_1.txt co_synatc2_1.txt co_synbtc1_1.txt co_synbtc2_1.txt co_synbtc3_1.txt)

cnt1=${#Exp_name[@]}

for (( i = 0 ; i < cnt1 ; i++ ))
do
echo "${Exp_name[$i]}"
#grep / ${acc1[$i]}
#if echo ${acc1[$i]} | grep -qi '/'
#then
#echo "Element [$i]: ${acc1[$i]}_"$acc_tester""
#acc_with_tester[$i]=${acc1[$i]}_"$acc_tester"
#fi
#for i in ${trial_name[@]}; do echo $i; done

#((head -2 $1)&&(awk -F'\t' '$38 == "${trial_name[$i]}"' $1)) > "${trial_name[$i]}"_plot.txt

#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-2"' co_synatc1_1.txt)) > SYNATC-1-2.txt
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-3"' co_synatc1_1.txt)) > SYNATC-1-3.txt
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-4"' co_synatc1_1.txt)) > SYNATC-1-4.txt
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-7"' co_synatc1_1.txt)) > SYNATC-1-7.txt

#done

trial_name=(`cut -f38 "${Exp_name[$i]}" | sort -u | tr "\n" "\t"`)

cnt=${#trial_name[@]}

for (( j = 1 ; j < cnt ;j++ ))
do
echo "${trial_name[$j]}"
ut=${trial_name[$j]}

#grep / ${acc1[$i]}
#if echo ${acc1[$i]} | grep -qi '/'
#then
#echo "Element [$i]: ${acc1[$i]}_"$acc_tester""
#acc_with_tester[$i]=${acc1[$i]}_"$acc_tester"
#fi
#for i in ${trial_name[@]}; do echo $i; done


#awk -F'\t' '$38 == "${trial_name[$j]}"' "${Exp_name[$i]}"
#awk -F'\t' '$38 == "${trial_name[$j]}"' "${Exp_name[$i]}" > "${trial_name[$j]}"_plot.txt
#awk -F'\t' '$38 == "${trial_name[$j]}"' co_synatc1_1.txt > "${trial_name[$j]}"_plot.txt

((head -2 "${Exp_name[$i]}")&&(awk -F"\t" -vut="$ut" '$38 == ut' "${Exp_name[$i]}")) > "${trial_name[$j]}"_plot.txt

((head -2 "${trial_name[$j]}"_plot.txt)&&(awk -F"\t" '$2 == 1' "${trial_name[$j]}"_plot.txt)) > "${trial_name[$j]}"_plot_1.txt
((head -2 "${trial_name[$j]}"_plot.txt)&&(awk -F"\t" '$2 == 2' "${trial_name[$j]}"_plot.txt)) > "${trial_name[$j]}"_plot_2.txt

diff <(cut -f5 "${trial_name[$j]}"_plot_1.txt) <(cut -f5 "${trial_name[$j]}"_plot_1.txt)
diff <(cut -f1 "${trial_name[$j]}"_plot_1.txt) <(cut -f1 "${trial_name[$j]}"_plot_1.txt)


#cut -f2 "${trial_name[$j]}"_plot.txt | sort -u


#-vut="$ut" '$1==ut' 
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-2"' co_synatc1_1.txt)) > SYNATC-1-2.txt
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-3"' co_synatc1_1.txt)) > SYNATC-1-3.txt
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-4"' co_synatc1_1.txt)) > SYNATC-1-4.txt
#((head -2 co_synatc1_1.txt)&&(awk -F'\t' '$38 == "SYNATC-1-7"' co_synatc1_1.txt)) > SYNATC-1-7.txt

done
done

EOF1


#<<EOF2

#data.SYNATC.1<-read.xls("SYNATC-1-correct.xlsx",header=T)
#data.SYNATC.2<-read.xls("SynATC-2-correct.xlsx",header=T)

#data.SYNBTC.1<-read.xls("SynBTC-1-correct.xlsx",header=T)
#data.SYNBTC.2<-read.xls("SynBTC-2-correct.xlsx",header=T)
#data.SYNBTC.3<-read.xls("SYNBTC-3-correct.xlsx",header=T)


#write.table(data.SYNATC.1,file="synatc1_1_54-1.txt",append = FALSE, quote = F, sep = "\t",eol = "\n", na = "NA", dec = ".", row.names = F, col.names = TRUE,as.is=T)

#SYNATC-1-correct.csv
#SynATC-2-correct.csv
#SynBTC-1-correct.csv
#SynBTC-2-correct.csv
#SYNBTC-3-correct.csv


cp SYNATC-1-correct.csv synatc1_1_54.txt

cp SynATC-2-correct.csv synatc2_1_41_118_131.txt

cp SynBTC-1-correct.csv synbtc1_1_40_117_130.txt

cp SynBTC-2-correct.csv synbtc2_1_40_117_130.txt

cp SYNBTC-3-correct.csv synbtc3_1_40_117_130.txt 


echo "synatc1_1_54.txt"
sed -n -e1,1p synatc1_1_54.txt | tr "\t" "\n" | wc -l  
#cut -f47 synatc1_1_54.txt | sort -u | grep SYN | tr "\n" "\t"
#cut -f47 synatc1_1_54.txt | sort -u | tr "\t" "\n"

trial_name=(`cut -f47 synatc1_1_54.txt | sort -u | grep SYN | tr "\n" "\t"`)
cnt=${#trial_name[@]}

for (( j = 0 ; j < cnt ;j++ ))
do
echo "${trial_name[$j]}"
ut=${trial_name[$j]}

geo_description=`awk -v OFS="" -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | awk -v OFS="" -F"\t" '{print $48,"_",$49}'  | sort -u`

awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f42 | sort -u
awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f44 | sort -u
awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f48 | sort -u
awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f49 | sort -u

project_name=`awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f47 | sort -u`  
project_description="$project_name"
year=`awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f45 | sort -u` 
planting_date=`awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f52 | sort -u`


#project_name=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u`
#project_description="$project_name"
#geo_description=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
#planting_date=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u`
fertilizer_date=""
#year=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u`
address=""

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > "$ut".cvsmetadata

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut".cvsmetadata

echo -e "accession_name" > "$ut"_accession.txt

awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f10  | awk -v OFS="" -F'/' '{print $1}' | sort -u > "$ut"_accession1.txt 
awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f10  | awk -v OFS="" -F'/' '{print $2}' | sort -u > "$ut"_accession2.txt 
awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f10  | awk -v OFS="" -F'/' '{print "tester_",$2,"_"$3}' | sort -u > "$ut"_accession3.txt 
awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f10  | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}' | sort -u > "$ut"_accession4.txt

cat  "$ut"_accession4.txt "$ut"_accession1.txt  "$ut"_accession3.txt >> "$ut"_accession.txt
echo -e "accession_name\tpedigree" > "$ut"_accession_ped.txt

paste <(awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f10 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | cut -f10 | awk -v OFS="" -F'/' '{print $1,"///","tester_",$2,"_",$3}') | sort -uk1,1 >> "$ut"_accession_ped.txt

#echo -e "DESIG\taccession_name" > "$ut"_DESIG_accession.txt

((sed -n -e1,2p "$ut"_plot_1.txt)&&(paste <(cut -f1-4 "$ut"_plot_1.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | awk -F"\t" '$6 == 1' | cut -f10 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_1.txt | tail -n +3))) > "$ut"_plot_1_1.txt  

((sed -n -e1,2p "$ut"_plot_2.txt)&&(paste <(cut -f1-4 "$ut"_plot_2.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$47 == ut' synatc1_1_54.txt | awk -F"\t" '$6 == 2' | cut -f10 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_2.txt | tail -n +3))) > "$ut"_plot_2_2.txt  

#paste <(awk -F"\t" '$2 == 1' "${trial_name[$j]}"_plot.txt "awk -F"\t" '$2 == 1 cut -f1 synatc1_1_54.txt | tail -n +2 ) <(cut -f10 synatc1_1_54.txt | tail -n +2 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') >> "$ut"_DESIG_accession.txt


#cut -f10,10 synatc1_1_54.txt | tail -n +2 >> "$ut"_accession_ped.txt


done

echo "synatc2_1_41_118_131.txt" 
sed -n -e1,1p synatc2_1_41_118_131.txt | tr "\t" "\n" | wc -l  
#cut -f47 synatc1_1_54.txt | sort -u | grep SYN | tr "\n" "\t"
#cut -f47 synatc1_1_54.txt | sort -u | tr "\t" "\n"

trial_name=(`cut -f47 synatc2_1_41_118_131.txt | sort -u | grep SYN | tr "\n" "\t"`)
cnt=${#trial_name[@]}

for (( j = 0 ; j < cnt ;j++ ))
do
echo "${trial_name[$j]}"
ut=${trial_name[$j]}

geo_description=`awk -v OFS="" -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | awk -v OFS="" -F"\t" '{print $48,"_",$49}' | sort -u`

awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt  | cut -f42 | sort -u
awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt  | cut -f44 | sort -u
awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt  | cut -f48 | sort -u
awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt  | cut -f49 | sort -u

project_name=`awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt  | cut -f47 | sort -u`  
project_description="$project_name"
year=`awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt  | cut -f45 | sort -u` 
planting_date=`awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f53 | sort -u`


#project_name=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u`
#project_description="$project_name"
#geo_description=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
#planting_date=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u`
fertilizer_date=""
#year=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u`
address=""

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > "$ut".cvsmetadata

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut".cvsmetadata

echo -e "accession_name" > "$ut"_accession.txt

awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f10  | awk -v OFS="" -F'/' '{print $1}' | sort -u > "$ut"_accession1.txt 
awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f10  | awk -v OFS="" -F'/' '{print $2}' | sort -u > "$ut"_accession2.txt 
awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f10  | awk -v OFS="" -F'/' '{print "tester_",$2,"_"$3}' | sort -u > "$ut"_accession3.txt 
awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f10  | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}' | sort -u > "$ut"_accession4.txt

cat  "$ut"_accession4.txt "$ut"_accession1.txt  "$ut"_accession3.txt >> "$ut"_accession.txt
echo -e "accession_name\tpedigree" > "$ut"_accession_ped.txt

paste <(awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f10 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | cut -f10 | awk -v OFS="" -F'/' '{print $1,"///","tester_",$2,"_",$3}') | sort -uk1,1 >> "$ut"_accession_ped.txt

#echo -e "DESIG\taccession_name" > "$ut"_DESIG_accession.txt

((sed -n -e1,2p "$ut"_plot_1.txt)&&(paste <(cut -f1-4 "$ut"_plot_1.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | awk -F"\t" '$6 == 1' | cut -f10 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_1.txt | tail -n +3))) > "$ut"_plot_1_1.txt  

((sed -n -e1,2p "$ut"_plot_2.txt)&&(paste <(cut -f1-4 "$ut"_plot_2.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$47 == ut' synatc2_1_41_118_131.txt | awk -F"\t" '$6 == 2' | cut -f10 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_2.txt | tail -n +3))) > "$ut"_plot_2_2.txt  

done


echo "synbtc1_1_40_117_130.txt" 
sed -n -e1,1p synbtc1_1_40_117_130.txt | tr "\t" "\n" | wc -l  
#cut -f47 synatc1_1_54.txt | sort -u | grep SYN | tr "\n" "\t"
#cut -f47 synatc1_1_54.txt | sort -u | tr "\t" "\n"

trial_name=(`cut -f46 synbtc1_1_40_117_130.txt | sort -u | grep SYN | tr "\n" "\t"`)
cnt=${#trial_name[@]}

for (( j = 0 ; j < cnt ;j++ ))
do
echo "${trial_name[$j]}"
ut=${trial_name[$j]}

geo_description=`awk -v OFS="" -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | awk -v OFS="" -F"\t" '{print $47,"_",$48}' | sort -u`

awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt  | cut -f42 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt  | cut -f44 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt  | cut -f48 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt  | cut -f49 | sort -u

project_name=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt  | cut -f46 | sort -u`  
project_description="$project_name"
year=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt  | cut -f44 | sort -u` 
planting_date=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f52 | sort -u`


#project_name=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u`
#project_description="$project_name"
#geo_description=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
#planting_date=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u`
fertilizer_date=""
#year=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u`
address=""

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > "$ut".cvsmetadata

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut".cvsmetadata


echo -e "accession_name" > "$ut"_accession.txt

awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $1}' | sort -u > "$ut"_accession1.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $2}' | sort -u > "$ut"_accession2.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print "tester_",$2,"_"$3}' | sort -u > "$ut"_accession3.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}' | sort -u > "$ut"_accession4.txt

cat  "$ut"_accession4.txt "$ut"_accession1.txt  "$ut"_accession3.txt >> "$ut"_accession.txt
echo -e "accession_name\tpedigree" > "$ut"_accession_ped.txt

paste <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | cut -f9 | awk -v OFS="" -F'/' '{print $1,"///","tester_",$2,"_",$3}') | sort -uk1,1 >> "$ut"_accession_ped.txt

#echo -e "DESIG\taccession_name" > "$ut"_DESIG_accession.txt

((sed -n -e1,2p "$ut"_plot_1.txt)&&(paste <(cut -f1-4 "$ut"_plot_1.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | awk -F"\t" '$6 == 1' | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_1.txt | tail -n +3))) > "$ut"_plot_1_1.txt  

((sed -n -e1,2p "$ut"_plot_2.txt)&&(paste <(cut -f1-4 "$ut"_plot_2.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc1_1_40_117_130.txt | awk -F"\t" '$6 == 2' | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_2.txt | tail -n +3))) > "$ut"_plot_2_2.txt  


done


echo "synbtc2_1_40_117_130.txt" 
sed -n -e1,1p synbtc2_1_40_117_130.txt | tr "\t" "\n" | wc -l  
#cut -f47 synatc1_1_54.txt | sort -u | grep SYN | tr "\n" "\t"
#cut -f47 synatc1_1_54.txt | sort -u | tr "\t" "\n"

trial_name=(`cut -f46 synbtc2_1_40_117_130.txt | sort -u | grep SYN | tr "\n" "\t"`)
cnt=${#trial_name[@]}

for (( j = 0 ; j < cnt ;j++ ))
do
echo "${trial_name[$j]}"
ut=${trial_name[$j]}

geo_description=`awk -v OFS="" -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | awk -v OFS="" -F"\t" '{print $47,"_",$48}' | sort -u`

awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt  | cut -f42 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt  | cut -f44 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt  | cut -f48 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt  | cut -f49 | sort -u

project_name=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt  | cut -f46 | sort -u`  
project_description="$project_name"
year=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt  | cut -f44 | sort -u` 
planting_date=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f52 | sort -u`


#project_name=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u`
#project_description="$project_name"
#geo_description=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
#planting_date=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u`
fertilizer_date=""
#year=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u`
address=""

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > "$ut".cvsmetadata

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut".cvsmetadata

echo -e "accession_name" > "$ut"_accession.txt

awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $1}' | sort -u > "$ut"_accession1.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $2}' | sort -u > "$ut"_accession2.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print "tester_",$2,"_"$3}' | sort -u > "$ut"_accession3.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}' | sort -u > "$ut"_accession4.txt

cat  "$ut"_accession4.txt "$ut"_accession1.txt  "$ut"_accession3.txt >> "$ut"_accession.txt
echo -e "accession_name\tpedigree" > "$ut"_accession_ped.txt

paste <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | cut -f9 | awk -v OFS="" -F'/' '{print $1,"///","tester_",$2,"_",$3}') | sort -uk1,1 >> "$ut"_accession_ped.txt

#echo -e "DESIG\taccession_name" > "$ut"_DESIG_accession.txt

((sed -n -e1,2p "$ut"_plot_1.txt)&&(paste <(cut -f1-4 "$ut"_plot_1.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | awk -F"\t" '$6 == 1' | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_1.txt | tail -n +3))) > "$ut"_plot_1_1.txt  

((sed -n -e1,2p "$ut"_plot_2.txt)&&(paste <(cut -f1-4 "$ut"_plot_2.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc2_1_40_117_130.txt | awk -F"\t" '$6 == 2' | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_2.txt | tail -n +3))) > "$ut"_plot_2_2.txt  


done


echo "synbtc3_1_40_117_130.txt" 
sed -n -e1,1p synbtc3_1_40_117_130.txt | tr "\t" "\n" | wc -l  
#cut -f47 synatc1_1_54.txt | sort -u | grep SYN | tr "\n" "\t"
#cut -f47 synatc1_1_54.txt | sort -u | tr "\t" "\n"

trial_name=(`cut -f46 synbtc3_1_40_117_130.txt | sort -u | grep SYN | tr "\n" "\t"`)
cnt=${#trial_name[@]}

for (( j = 0 ; j < cnt ;j++ ))
do
echo "${trial_name[$j]}"
ut=${trial_name[$j]}

geo_description=`awk -v OFS="" -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | awk -v OFS="" -F"\t" '{print $47,"_",$48}' | sort -u`

awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt  | cut -f42 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt  | cut -f44 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt  | cut -f48 | sort -u
awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt  | cut -f49 | sort -u

project_name=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt  | cut -f46 | sort -u`  
project_description="$project_name"
year=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt  | cut -f44 | sort -u` 
planting_date=`awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f52 | sort -u`


#project_name=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f1 | sort -u`
#project_description="$project_name"
#geo_description=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f2 | sort -u`
latitude=""
longitude=""
datum=""
altitude=""
#planting_date=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f3 | sort -u`
fertilizer_date=""
#year=`awk -F"\t" -vut="$ut" '$1==ut' trail_name_project_line_tester_pedigree_no_title.txt |cut -f4 | sort -u`
address=""

echo -e "project_name\tproject_description\tgeo_description\tlatitude\tlongitude\tdatum\taltitude\tplanting_date\tfertilizer_date\tyear\taddress" > "$ut".cvsmetadata

echo -e "$project_name\t$project_description\t$geo_description\t$latitude\t$longitude\t$datum\t$altitude\t$planting_date\t$fertilizer_date\t$year\t$address" >> "$ut".cvsmetadata

echo -e "accession_name" > "$ut"_accession.txt

awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $1}' | sort -u > "$ut"_accession1.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $2}' | sort -u > "$ut"_accession2.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print "tester_",$2,"_"$3}' | sort -u > "$ut"_accession3.txt 
awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f9  | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}' | sort -u > "$ut"_accession4.txt

cat  "$ut"_accession4.txt "$ut"_accession1.txt  "$ut"_accession3.txt >> "$ut"_accession.txt
echo -e "accession_name\tpedigree" > "$ut"_accession_ped.txt

paste <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | cut -f9 | awk -v OFS="" -F'/' '{print $1,"///","tester_",$2,"_",$3}') | sort -uk1,1 >> "$ut"_accession_ped.txt

#echo -e "DESIG\taccession_name" > "$ut"_DESIG_accession.txt

((sed -n -e1,2p "$ut"_plot_1.txt)&&(paste <(cut -f1-4 "$ut"_plot_1.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | awk -F"\t" '$6 == 1' | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_1.txt | tail -n +3))) > "$ut"_plot_1_1.txt  

((sed -n -e1,2p "$ut"_plot_2.txt)&&(paste <(cut -f1-4 "$ut"_plot_2.txt | tail -n +3) <(awk -F"\t" -vut="$ut" '$46 == ut' synbtc3_1_40_117_130.txt | awk -F"\t" '$6 == 2' | cut -f9 | awk -v OFS="" -F'/' '{print $1,"_tester_",$2,"_",$3}') <(cut -f6- "$ut"_plot_2.txt | tail -n +3))) > "$ut"_plot_2_2.txt  


done

#EOF2

<<EOF3

#cut -f1,2,3,10,11,47,5,42,44,48,49,52,45 synatc1_1_54.txt | less



echo "synatc2_1_41_118_131.txt"
sed -n -e1,1p synatc2_1_41_118_131.txt | tr "\t" "\n" | wc -l

echo "synbtc1_1_40_117_130.txt"
sed -n -e1,1p synbtc1_1_40_117_130.txt | tr "\t" "\n" | wc -l

echo "synbtc2_1_40_117_130.txt"
sed -n -e1,1p synbtc2_1_40_117_130.txt | tr "\t" "\n" | wc -l

echo "synbtc3_1_40_117_130.txt"
sed -n -e1,1p synbtc3_1_40_117_130.txt | tr "\t" "\n" | wc -l

NameOfExperiment
SYNATC-1-1
SYNATC-1-2
SYNATC-1-3
SYNATC-1-4
SYNATC-1-7

NameOfExperiment
SYNATC-2-1
SYNATC-2-2
SYNATC-2-3
SYNATC-2-4
SYNATC-2-5
SYNATC-2-7

NameOfExperiment
SYNBTC-1-1
SYNBTC-1-2
SYNBTC-1-3
SYNBTC-1-4
SYNBTC-1-7

NameOfExperiment
SYNBTC-2-1
SYNBTC-2-2
SYNBTC-2-3
SYNBTC-2-4
SYNBTC-2-5
SYNBTC-2-7

NameOfExperiment
SYNBTC-3-1
SYNBTC-3-2
SYNBTC-3-3
SYNBTC-3-4
SYNBTC-3-5
SYNBTC-3-7

cut -f38 co_synatc2_1.txt | sort -u

cut -f38 co_synbtc1_1.txt | sort -u

cut -f38 co_synbtc2_1.txt | sort -u

cut -f38 co_synbtc3_1.txt | sort -u
EOF3

#paste <(ls *.cvsmetadata) <(ls *_accession.txt) <(ls *accession_ped.txt) <(ls *plot_1_1.txt ) <(ls *plot_2_2.txt) > SYN_28_trial.txt
