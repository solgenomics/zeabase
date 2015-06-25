cp "Clean data 6x1008_WET10B-EVALTC-08-1_backup.csv" "Clean data 6x1008_WET10B-EVALTC-08-1.csv" 

awk '{print $5,"\t",$2,"\t",$3,"\t",$4,"\t"," ","\t"," ","\t"," ","\t",$6,"\t",$7,"\t",$8,"\t",$9,"\t",$10}' "Clean data 6x1008_WET10B-EVALTC-08-1.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1_1_391.csv"

sed -n -e2,196p "Clean data 6x1008_WET10B-EVALTC-08-1_1_391.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1_1_391-rep1.csv" 
sed -n -e197,391p "Clean data 6x1008_WET10B-EVALTC-08-1_1_391.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1_1_391-rep2.csv" 

cat FirstRowTitle.csv "Clean data 6x1008_WET10B-EVALTC-08-1_1_391-rep1.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1.csv"

perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "Clean data 6x1008_WET10B-EVALTC-08-1.csv"

cat FirstRowTitle.csv "Clean data 6x1008_WET10B-EVALTC-08-1_1_391-rep2.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1.csv"

perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "Clean data 6x1008_WET10B-EVALTC-08-1.csv"



1986  ls *6x1008*   
 1987  head "Clean data 6x1008_WET10B-EVALTC-08-1.csv"  
 1988  head FirstRowTitle.csv 
 1989  head "Clean data 6x1008_WET10B-EVALTC-08-1.csv"  
 1990  awk '{print $5,"\t",$2,"\t",$3,"\t",$4,"\t",$6,"\t",$7,"\t",$8,"\t",$9,"\t",$10}' "Clean data 6x1008_WET10B-EVALTC-08-1.csv" 
 1991  awk '{print $5,"\t",$2,"\t",$3,"\t",$4,"\t",$6,"\t",$7,"\t",$8,"\t",$9,"\t",$10}' "Clean data 6x1008_WET10B-EVALTC-08-1.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1_reordered.csv"
 1992  vi "Clean data 6x1008_WET10B-EVALTC-08-1_reordered.csv"
 1993  ls F*
 1994  cat FirstRowTitle.csv "Clean data 6x1008_WET10B-EVALTC-08-1_reordered.csv"
 1995  cat FirstRowTitle.csv "Clean data 6x1008_WET10B-EVALTC-08-1_reordered.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 1996  vi "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 1997  sed -n -e1,1p "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 1998  sed -n -e1,2p "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 1999  sed -n -e1,2p -e4,7p "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 2000  wc -l "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 2001  sed -n -e1,2p -e3,7p "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 2002  sed -n -e1,2p -e4,393p "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" 
 2003  sed -n -e1,2p -e4,393p "Clean data 6x1008_WET10B-EVALTC-08-1_reordered_add_title.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1_reformated.csv"
 2004  vi "Clean data 6x1008_WET10B-EVALTC-08-1_reformated.csv"
 2005  ls "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2006  cp "Clean data 6x1008_WET10B-EVALTC-08-1.csv" "Clean data 6x1008_WET10B-EVALTC-08-1_backup.csv"
 2007  vi "Clean data 6x1008_WET10B-EVALTC-08-1_backup.csv"
 2008  cp "Clean data 6x1008_WET10B-EVALTC-08-1_reformated.csv" "Clean data 6x1008_WET10B-EVALTC-08-1.csv" 
 2009  vi "Clean data 6x1008_WET10B-EVALTC-08-1.csv
 2010  vi "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2011  sed -n -e1,2p -e3,197p "Clean data 6x1008_WET10B-EVALTC-08-1.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1-rep1.csv"
 2012  sed -n -e1,2p -e198,392p "Clean data 6x1008_WET10B-EVALTC-08-1.csv" > "Clean data 6x1008_WET10B-EVALTC-08-1-rep2.csv"
 2013  vi "Clean data 6x1008_WET10B-EVALTC-08-1-rep1.csv"
 2014  vi "Clean data 6x1008_WET10B-EVALTC-08-1-rep2.csv"
 2015  ls "Clean data 6x1008_WET10B-EVALTC-08-1*"
 2016  ls "Clean data 6x1008_WET10B-EVALTC-08-1"
 2017  ls "Clean data 6x1008_WET10B-EVALTC-08-1.*"
 2018  ls "Clean data 6x1008_WET10B-EVALTC-08-1*.*"
 2019  pwd
 2020  ls
 2021  ls "Clean data 6x1008_WET10B-EVALTC-08-1*.*"
 2022  ls "Clean data 6x1008_WET10B-EVALTC-08-1.*"
 2023  ls *6x1008*   
 2024  perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonyMetadata.pl -H localhost -D zea -i "Clean data 6x1008_WET10B-EVALTC-08-1.csvmetadata"
 2025  cp "Clean data 6x1008_WET10B-EVALTC-08-1-rep1.csv" "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2026  perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2027  vi ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl
 2028  perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2029  vi ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl
 2030  perl ~/TonyZeaData/Pop11\ 6x1018/perl_code/LoadScriptForTonydata.pl -H localhost -D zea -i "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2031  vi "Clean data 6x1008_WET10B-EVALTC-08-1.csv"
 2032  history
 2033  history 300
