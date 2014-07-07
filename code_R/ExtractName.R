extract_name<-function(file.name){

data.for.read<-read.xls(file.name,sheet=4)

write.table(data.for.read[2:length(data.for.read[,2]),2],file="F3_name.txt",append = T, quote = F, sep = "\t",eol = "\n",row.names = F,col.names = F);

}                 
                 
extract_name("./Link genotypes with phenotypes/Clean data 6x1008.xlsx");


file_name=c("Clean data 6x1008.xlsx", 
"Clean data 6x1015.xlsx", 
"Clean data 6x1016.xlsx",
"Clean data 6x1017.xlsx", 
"Clean data 6x1018.xlsx", 
"Clean data 6x1019.xlsx",
"Clean data 6x1020.xlsx", 
"Clean data 6x1021.xlsx", 
"Clean data 6x1023.xlsx",
"Clean data 6x1028.xlsx", 
"Clean data 6X1114.xlsx", 
"Clean data 6x1115.xlsx",
"Clean data 6x1116.xlsx", 
"Clean data 6x1117.xlsx", 
"Clean data 6x1118.xlsx",
"Clean data 6X1119.xlsx", 
"Clean data 6x1120.xlsx", 
"Clean data 6x1121.xlsx",
"Clean data 6x1122.xlsx")


n=length(file_name)

for(i in 1:n){

#new_file_name=paste("./Link genotypes with phenotypes/",file_name[i],sep="");

new_file_name=file_name[i];
cat(new_file_name,"\n");

#extract_name(new_file_name);


Generate.plot.data.for.loading(new_file_name);

}




Generate.plot.data.for.loading("./Link genotypes with phenotypes/Clean data 6x1008.xlsx")



"Clean data 6x1015.xlsx" 
"Clean data 6x1016.xlsx"
"Clean data 6x1017.xlsx" 
"Clean data 6x1018.xlsx" 
"Clean data 6x1019.xlsx"
"Clean data 6x1020.xlsx" 
"Clean data 6x1021.xlsx" 
"Clean data 6x1023.xlsx"
"Clean data 6x1028.xlsx" 
"Clean data 6X1114.xlsx" 
"Clean data 6x1115.xlsx"
"Clean data 6x1116.xlsx" 
"Clean data 6x1117.xlsx" 
"Clean data 6x1118.xlsx"
"Clean data 6X1119.xlsx" 
"Clean data 6x1120.xlsx" 
"Clean data 6x1121.xlsx"
"Clean data 6x1122.xlsx"
