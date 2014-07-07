data.pr[which(data.pr[,5]=="RM"),8]

data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),8]

data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),8]


cat("RM","\n")
for (i in 8:36)
{
#print(t.test(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),i]))
cat(colnames(data.pr)[i],"\t",t.test(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),i])$p.value,"\n")
}


cat("SM","\n")
for (i in 8:36)
{
#print(t.test(data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV pos"),i]))
cat(colnames(data.pr)[i],"\t",t.test(data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV pos"),i])$p.value,"\n")
}


data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV neg"),]

cat("RM vs SM on SIV neg","\n")
for (i in 8:36)
{
#print(t.test(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),i]))
cat(colnames(data.pr)[i],"\t",t.test(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV neg"),i])$p.value,"\n")
}


cat("RM vs SM on SIV pos","\n")
for (i in 8:36)
{
#print(t.test(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),i],data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),i]))
cat(colnames(data.pr)[i],"\t",t.test(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),i],data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV pos"),i])$p.value,"\n")
}


library(lattice)
cor.sm.siv.neg<-cor(data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV neg"),8:36])
png("SM_SIV_neg_corr.png")
levelplot(cor.sm.siv.neg, aspect="iso", scales=list(x=list(rot=90)), main="Correlation Matrix", cuts=100, at=seq(0,1,0.01))
dev.off()

cor.sm.siv.pos<-cor(data.pr[which(data.pr[,5]=="SM"&data.pr[,6]=="SIV pos"),8:36])
png("SM_SIV_pos_corr.png")
levelplot(cor.sm.siv.pos, aspect="iso", scales=list(x=list(rot=90)), main="Correlation Matrix", cuts=100, at=seq(0,1,0.01))
dev.off()

cor.rm.siv.neg<-cor(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV neg"),8:36])
png("RM_SIV_neg_corr.png")
levelplot(cor.rm.siv.neg, aspect="iso", scales=list(x=list(rot=90)), main="Correlation Matrix", cuts=100, at=seq(0,1,0.01))
dev.off()

cor.rm.siv.pos<-cor(data.pr[which(data.pr[,5]=="RM"&data.pr[,6]=="SIV pos"),8:36])
png("RM_SIV_pos_corr.png")
levelplot(cor.rm.siv.pos, aspect="iso", scales=list(x=list(rot=90)), main="Correlation Matrix", cuts=100, at=seq(0,1,0.01))
dev.off()

heatmap(as.matrix(data.pr[which(data.pr[,6]=="SIV neg"),8:36]))











