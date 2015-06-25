file_name=c("Clean data 6x1116.xlsx", 
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
