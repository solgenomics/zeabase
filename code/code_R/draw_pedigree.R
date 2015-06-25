pedAll <- pedigree(id=sample.ped$id,
dadid=sample.ped$father, momid=sample.ped$mother,
sex=sample.ped$sex, famid=sample.ped$ped)


sample.ped.3<-ped.MARS.WEMA.269939[,2:6]

pedAll <- pedigree(id=sample.ped.3$id,
dadid=sample.ped.3$father, momid=sample.ped.3$mother,
sex=sample.ped.3$sex, famid=sample.ped.3$ped)


#1 196 197 198 199 200 201

#1   WEMA6x1008_MARS-WEMA_269939_tester_CML395_CML444   1   1    201    196   1
#196                             tester_CML395_CML444   1 196    197    198   2
#197                                           CML395   1 197      0      0   1
#198                                           CML444   1 198      0      0   2
#199                                           CML505   1 199      0      0   1
#200                                         CZL00009   1 200      0      0   2
#201                                 MARS-WEMA_269939  


id2 <- paste(ped1basic$id, c("WEMA6x1008_MARS-WEMA_269939_tester_CML395_CML44", "tester_CML395_CML444", " CML395", "CML444", "CML505", "CZL00009","MARS-WEMA_269939"), sep="\n")
id3 <- c("WEMA6x1008_MARS-WEMA_269939_tester_CML395_CML44", "tester_CML395_CML444", " CML395", "CML444", "CML505", "CZL00009","WEMA6x1008_MARS-WEMA_269939")
col3<- c("black", "black", "black", "black", "black", "black","black")



plot(ped1basic,id=id2)

plot(ped1basic,id=id3,col=col3)

pedigree.legend(ped1basic, location="topright", radius=.3)

ped1basic$id


pedAll <- pedigree(id=sample.ped.2$id,
dadid=sample.ped.2$father, momid=sample.ped.2$mother,
sex=sample.ped.2$sex, famid=sample.ped.2$ped)


# create data frame with scores
scores = as.data.frame(pca1$x)
 
# plot of observations
ggplot(data=scores, aes(x=PC1, y=PC2, label=rownames(scores)))
 +
geom_hline(yintercept=0, colour="gray65") +
geom_vline(xintercept=0, colour="gray65") +
geom_text(colour="tomato", alpha=0.8, size=4) +
opts(title="6x1008"))


pc1.2 <- qplot(x=PC1, y=PC2, data=scores, colour=factor(rownames(scores)),theme(legend.position="none"))


sample.group=c(rep("tester_6x1008",195),rep("tester",1),rep("tester_p1",1),rep("tester_p2",1),rep("6x1008_p1",1),rep("6x1008_p2",1),rep("6x1008",195))


pc1.2 <- qplot(x=PC1, y=PC2, data=scores, colour=factor(sample.group),theme(legend.position="none"))


#tester_6x1008:1:195
#tester:196
#tester_p1:197
#tester_p2:198
#6x1008_p1:199
#6x1008_p2:200
#6x1008: 201:395


scores2<-scores[c(1,196,197,198,199,200,201),]

sample.group.2<-sample.group[c(1,196,197,198,199,200,201)]

pc1.2.selected.sample <- qplot(x=PC1, y=PC2, data=scores2, colour=factor(sample.group.2),theme(legend.position="none"))


