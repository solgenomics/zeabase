
extract_each_rep_for_each_exp<-function(file.name){

#file.name="Clean data 6x1008_WET10B-EVALTC-08-1.csv";

#file.name="Clean data 6x1020_WET10B-EVALTC-14-5.csv"

data.for.read<-read.table(file.name,sep="\t",header=T)

rep=c(unique(data.for.read[,2]))
n=length(rep)

cat(file.name)
print(rep)
cat("\n")

np=gregexpr(".csv",file.name)[[1]][1]

file.name2=substr(file.name,1,np-1)





for(i in 1:n){

ENTRY<-data.for.read[which(data.for.read[,2]==rep[i]),5]
REP_BLOCK_PLOT<-data.for.read[which(data.for.read[,2]==rep[i]),2:4]
DESIG<-c(rep(NA,length(ENTRY)[1]))   
NOPLT<-c(rep(NA,length(ENTRY)[1])) 
NOSV<-c(rep(NA,length(ENTRY)[1])) 
data.trait_exp<-data.for.read[which(data.for.read[,2]==rep[i]),6:dim(data.for.read)[2]]

data.rep.output<-cbind(ENTRY,REP_BLOCK_PLOT,DESIG,NOPLT,NOSV,data.trait_exp);


write.table(data.rep.output,file=paste(file.name2,"_rep",rep[i],".csv",sep=""),append = F,na=" ",quote = F, sep = "\t",eol = "\n",row.names = F,col.names = F);
}

}                 


file.3.name<-read.table("1116_1121_1122.txt",sep="\t",header=F) 

#new.csv.file.name=file.3.name

new.csv.file.name=trim(file.3.name[,2])


as.character(new.csv.file.name)

mm=length(new.csv.file.name)


#m=length(filename.data.119)

for(j in 1:m){


extract_each_rep_for_each_exp(as.character(new.csv.file.name)[j])

}
#[1] 143




#extract_name("./Link genotypes with phenotypes/Clean data 6x1008.xlsx");
