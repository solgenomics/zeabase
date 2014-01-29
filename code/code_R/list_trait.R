#to use
#R --slave --args 10 < ./run_r.R

myarg <- commandArgs()
cat(myarg,"\n");
m=length(myarg)
cat(m,"\n");

f_index<-myarg[4:4]

cat(f_index,"\n")

#ff <- myarg[5:m]

#f<-paste(ff,collapse=" ")

#cat(f_index,"\n")
#cat(f,"\n")
#cat(length(f),"\n")

#cat(m,"\n")

#library(affy)
#eset=justRMA(celfile.path=f)
#write.exprs(eset,file=paste(f_index,"_exprs.txt",sep=""))
#save.image(file=paste(f,".RData",sep=""))
#q()





#list_trait<-function(file.name){
getwd()

#library(gdata)
file_name=paste("~/DataFromXuecai/Link genotypes with phenotypes/",f_index,sep="");
cat(file_name,"\n");

data.for.read<-read.csv(file_name,header=T,sep="\t")

print(colnames(data.for.read))

#write.table(data.for.read[2:length(data.for.read[,2]),2],file="F3_name.txt",append = T, quote = F, sep = "\t",eol = "\n",row.names = F,col.names = F);

#}
quit("yes")
