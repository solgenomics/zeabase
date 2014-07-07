extract_name<-function(){

#data.for.pedigree<-read.csv(file.pedigree,header=T)


file_name=c("Clean data 6x1008.xlsx", 

n=length(file_name)

data.accession<-list();

for(i in 1:n){

population_name<-file_name[i]
accession_name<-read.xls(file_name[i],sheet=4)

data.for.read<-list(population_name,accession_name)

data.accession[[i]]<-data.for.read

}

m=length(data.accession)

#data.for.read[[m+1]]<-data.for.pedigree

cat(m,"\n");

return(data.accession)

#print(data.for.read[2:length(data.for.read[,2]),2]);

#write.table(data.for.read[2:length(data.for.read[,2]),2],file="F3_name.txt",append = T, quote = F, s#ep = "\t",eol = "\n",row.names = F,col.names = F);

}                 
                 
data.accession<-extract_name();

#data.accession.pedigree<-extract_name("./20_population_accession_2.csv");


#paste(colnames(data.accession.pedigree[[1]])[2],"_",data.accession.pedigree[[2]][,2],sep="")


data.for.pedigree<-read.csv("./20_population_accession_2.csv",header=T,sep="\t")

grep(data.accession[[1]][[1]],data.for.pedigree[,1])

data.for.pedigree[grep(colnames(data.accession.pedigree[[i]])[2],data.for.pedigree[,1]),])


#data.accession.pedigree[[20]]

n=length(data.accession)

for(i in 1:n){


cat(data.accession[[i]][[1]],"\n")

rn=dim(data.accession[[i]][[2]])[1]



#print(data.accession[[i]][[2]][2:rn,2])
acc=c(as.character(data.accession[[i]][[2]][2:rn,2]))

m=grep(substr(data.accession[[i]][[1]],12,17),data.for.pedigree[,1])



#if(grep(colnames(data.accession.pedigree[[i]])[2],data.for.pedigree[,1])!=0)
#{
#print(data.for.pedigree[m,])
#}


#cat(m,"\t",as.character(data.for.pedigree[m,1]),"\n")
#cat(m,"\t",as.character(data.for.pedigree[m,2]),"\n");
#cat(m,"\t",as.character(data.for.pedigree[m,3]),"\n")
#cat(m,"\t",as.character(data.for.pedigree[m,4]),"\n")
#cat(m,"\t",as.character(data.for.pedigree[m,5]),"\n")

mm=ngrep("/",as.character(data.for.pedigree[m,4]))

cat(mm,"\n")

acc=c(acc,as.character(data.for.pedigree[m,2]),as.character(data.for.pedigree[m,3]),as.character(data.for.pedigree[m,4]),as.character(data.for.pedigree[m,5]),
paste(acc,"+",as.character(data.for.pedigree[m,5],sep="")))

print(acc)


}

#source("~/code/code_R/generate_accession_name.R")