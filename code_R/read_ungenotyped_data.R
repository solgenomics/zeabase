#source("~/code/code_R/read_ungenotyped_data.R")
#ReadUngenotypedData("accession_plus_ungenotyped_19.txt")
#ReadUngenotypedDat("ungenotyped_accession_pedigree_19.txt")

ReadUngenotypedData<-function(file_name_19){

file_name<-read.table(file_name_19)

m=dim(file_name)[1]

for(j in 1:m){

ungenotyped.data<-read.table(as.character(file_name[j,1]))

n=dim(ungenotyped.data)[1]
mp1=gregexpr("ungenotyped_",ungenotyped.data[1,1])
mp2=gregexpr("_tester",ungenotyped.data[1,1])
pop_name=c(substr(ungenotyped.data[1,1],1,mpn1[[1]][1]+10))
ungenotyped_rep=c(substr(ungenotyped.data[1,1],mp1[[1]][1]+12,mp2[[1]][1]-1))
tester_name=c(substr(ungenotyped.data[1,1],mp2[[1]][1]+1,
nchar(as.character(ungenotyped.data[1,1]))))

#cat(pop_name,"\n")
#cat(ungenotyped_rep,"\n")
#cat(tester_name,"\n")

for(i in 2:n){

mp1=gregexpr("ungenotyped_",ungenotyped.data[i,1])
mp2=gregexpr("_tester",ungenotyped.data[i,1])

pop_name=c(pop_name,substr(ungenotyped.data[i,1],1,mp1[[1]][1]+10))
ungenotyped_rep=c(ungenotyped_rep,substr(ungenotyped.data[i,1],mp1[[1]][1]+12,mp2[[1]][1]-1))
tester_name=c(tester_name,substr(ungenotyped.data[i,1],mp2[[1]][1]+1,
nchar(as.character(ungenotyped.data[i,1]))))

}

#print(pop_name)
ungenotyped_rep=as.numeric(ungenotyped_rep)
#print(ungenotyped_rep[order(ungenotyped_rep)])
#print(tester_name)

#print(as.data.frame(paste(pop_name,"_",ungenotyped_rep[order(ungenotyped_rep)],sep="")))
#print(as.data.frame((paste(pop_name,"_",ungenotyped_rep[order(ungenotyped_rep)],"_",tester_name,sep=""))))
#print(as.data.frame(paste(pop_name,"_",ungenotyped_rep[order(ungenotyped_rep)],"/",tester_name,sep="")))

data_pop_name_ung=paste(pop_name,"_",ungenotyped_rep[order(ungenotyped_rep)],sep="")
#colnames(data_pop_name_ung)=c("accession_name")
data_pop_name_ung_tester=paste(pop_name,"_",ungenotyped_rep[order(ungenotyped_rep)],"_",tester_name,sep="")
#colnames(data_pop_name_ung_tester)=c("accession_name")
data_pop_name_ung_tester_pedigree=paste(pop_name,"_",ungenotyped_rep[order(ungenotyped_rep)],"/",tester_name,sep="")
#colnames(data_pop_name_ung_tester_pedigree)=c("pedigree")

#print(data_pop_name_ung)
#print(data_pop_name_ung_tester)
#print(data_pop_name_ung_tester_pedigree)

genotyped.data<-read.table(as.character(file_name[j,2]),head=T,sep="\t")

nn=dim(genotyped.data)[1]

cat(as.character(file_name[j,2]),":",nn,"\n")

#print(class(genotyped.data[1:((nn-5)/2),1]))


genotyped.accession.pedigree.data<-read.table(as.character(file_name[j,3]),head=T,sep="\t")

nnn=dim(genotyped.accession.pedigree.data)[1]

cat(as.character(file_name[j,3]),":",nnn,"\n")

#print(genotyped.accession.pedigree.data[1:((nnn-1)/2),])

accplusung=c(as.character(genotyped.data[1:((nn-5)/2),]),
data_pop_name_ung_tester,as.character(genotyped.data[(((nn-5)/2)+1):(((nn-5)/2)+5),]),as.character(genotyped.data[(((nn-5)/2)+6):nn,]),
data_pop_name_ung)
accplusung=as.data.frame(accplusung)
colnames(accplusung)=c("accession_name")

data_acc_pedigree=as.data.frame(cbind(data_pop_name_ung_tester,data_pop_name_ung_tester_pedigree))
colnames(data_acc_pedigree)=c("accession_name","pedigree")

ung_data_acc_pedigree=as.data.frame(cbind(data_pop_name_ung,
rep(as.character(genotyped.accession.pedigree.data[(((nnn-1)/2)+2),2]),length(data_pop_name_ung))))

colnames(ung_data_acc_pedigree)=c("accession_name","pedigree")

print(ung_data_acc_pedigree)

accped_pedplusung=rbind(genotyped.accession.pedigree.data[1:((nnn-1)/2),],
data_acc_pedigree,
genotyped.accession.pedigree.data[(((nnn-1)/2)+1),],genotyped.accession.pedigree.data[(((nnn-1)/2)+2):nnn,],
ung_data_acc_pedigree
)


#accped_pedplusung=rbind(genotyped.data[1:((nn-5)/2),],data_pop_name_ung_tester,
#genotyped.data[(((nn-5)/2)+1):((nn-5)/2)+5),],genotyped.data[(((nn-5)/2)+6):nn,])

print(accplusung)
print(accped_pedplusung)

write.table(accplusung,file=paste(substr(as.character(file_name[j,2]),1,21),"_plus_ungenotyped.csv",sep=""),append= F, quote = F, sep = "\t",eol = "\n",row.names = F,col.names = T,na=" ");

write.table(accped_pedplusung,file=paste(substr(as.character(file_name[j,3]),1,57),"_plus_ungenotyped.csv",sep=""),append = F, quote = F, sep = "\t",eol = "\n",row.names = F,col.names = T,na=" ");

}


}