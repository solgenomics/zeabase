#source("~/code/code_R/generate_accession_name2.R")

n=length(data.accession)
index=c(1,2,3,4,5,6,7,8,9,12,13)

for(i in index){

cat(data.accession[[i]][[1]],"\n")

rn=dim(data.accession[[i]][[2]])[1]



#print(data.accession[[i]][[2]][2:rn,2])

Entry_number=c(as.character(data.accession[[i]][[2]][2:rn,1]))

acc=c(paste("WEMA_",substr(data.accession[[i]][[1]],12,17),"_",as.character(data.accession[[i]][[2]][2:rn,2]),sep=""))

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

mm=gregexpr("/",as.character(data.for.pedigree[m,4]))
ln=nchar(as.character(data.for.pedigree[m,4]));

print(mm)
cat(mm[[1]][1],"\n")
cat(ln,"\n")

acc_name=c(paste(acc,"_",as.character(data.for.pedigree[m,5]),sep=""),
as.character(data.for.pedigree[m,2]),as.character(data.for.pedigree[m,3]),substr(as.character(data.for.pedigree[m,4]),1,mm[[1]][1]-1),
substr(as.character(data.for.pedigree[m,4]),mm[[1]][1]+1,ln),
as.character(data.for.pedigree[m,5]),
acc)


print(acc_name)

pedigree_acc=c(paste(acc,"_",as.character(data.for.pedigree[m,5]),sep=""),as.character(data.for.pedigree[m,5]),acc)

print(pedigree_acc)

pedigree=c(paste(acc,"/",as.character(data.for.pedigree[m,5]),sep=""),as.character(data.for.pedigree[m,4]),
rep(paste(as.character(data.for.pedigree[m,2]),"/",as.character(data.for.pedigree[m,3]),sep=""),rn-2+1))

print(pedigree)


#acc_name=c(acc,as.character(data.for.pedigree[m,2]),as.character(data.for.pedigree[m,3]),substr(as.c#haracter(data.for.pedigree[m,4]),1,mm[[1]][1]-1),
#substr(as.character(data.for.pedigree[m,4]),mm[[1]][1]+1,ln),
#as.character(data.for.pedigree[m,5]),
#paste(acc,"_",as.character(data.for.pedigree[m,5]),sep=""))

#pedigree_acc=c(acc,
#as.character(data.for.pedigree[m,5]),
#paste(acc,"_",as.character(data.for.pedigree[m,5]),sep=""))


#pedigree=c(rep(paste(as.character(data.for.pedigree[m,2]),"/",as.character(data.for.pedigree[m,3]),s#ep=""),rn-2+1),
#as.character(data.for.pedigree[m,4]),
#paste(acc,"/",as.character(data.for.pedigree[m,5]),sep=""))

#print(acc_name)

#print(pedigree_acc)

#print(pedigree)

#print(cbind(pedigree_acc,pedigree))

data.accession.name<-data.frame(acc_name)
colnames(data.accession.name)<-c("accession_name")
data.accession.name.pedigree<-cbind(pedigree_acc,pedigree)
colnames(data.accession.name.pedigree)<-c("accession_name","pedigree")

data.entry.number.accession.name<-cbind(Entry_number,acc_name[1:length(Entry_number)])
colnames(data.entry.number.accession.name)<-c("Entry No","accession_name")





write.table(file=paste("WEMA_",substr(data.accession[[i]][[1]],12,17),"_accession.csv",sep=""),data.accession.name,quote=F,sep="\t",row.names=F)

write.table(file=paste("WEMA_",substr(data.accession[[i]][[1]],12,17),"_accession_pedigree.csv",sep=""),data.accession.name.pedigree,quote=F,sep="\t",row.names=F)

write.table(file=paste("WEMA_",substr(data.accession[[i]][[1]],12,17),"_entry_number_accession.csv",sep=""),data.entry.number.accession.name,quote=F,sep="\t",row.names=F)

}