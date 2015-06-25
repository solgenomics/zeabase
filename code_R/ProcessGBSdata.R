#;; This buffer is for notes you don't want to save, and for Lisp evaluation.
#;; If you want to create a file, visit that file with C-x C-f,
#;; then enter the text in that file's own buffer.

GBS<-read.csv("tpg12-06-0006-dataset-s2",header=T,as.is=TRUE,row.names=1)

parse.GBS <- function(x) {
unique.x <- unique(t(x))
alleles <- setdiff(unique.x,union("H","N"))

print(alleles)
cat(" ",length(alleles),"\n")

y <- rep(0,length(x))
y[which(x==alleles[1])] <- -1
y[which(x==alleles[2])] <- 1
y[which(x=="N")] <- NA
return(y)
}

X <-apply(GBS[,-c(1:3)],1,parse.GBS)

dim(X)


parse.vcf<- function(x){
#y<-matrix(unlist(strsplit(as.character(x),",",fixed=TRUE)),1,4)
y<-as.data.frame(unlist(strsplit(as.character(x),":",fixed=TRUE)))
y<-t(y)
return(y)
}

#31177    34


sample.y<-list()
s=1
for (j in 10:15){

y<-parse.vcf(dupsvcf[1,j])
row.names(y)<-dupsvcf[1,3]
print(dim(y))

for (i in 2:31177){
y.temp<-parse.vcf(dupsvcf[i,j])
row.names(y.temp)<-dupsvcf[i,3]
#y<-rbind(y,y.temp)

if(dim(y.temp)[2]==5){
y<-rbind(y,y.temp)
}
else
{
print(dim(y.temp))
print(y.temp)
}
}

sample.y[[s]]<-y
s=s+1
}


which.max(apply(rerunClones[,1:6],1,sd))

sample.y[[1]][which(row.names(sample.y[[1]])),]

GQ.30572<-cbind(sample.y[[1]][,4],sample.y[[2]][,4],sample.y[[3]][,4],sample.y[[4]][,4],sample.y[[5]][,4],sample.y[[6]][,4])

apply(GQ.30572,1,sd)


hist(apply(Dosage.GQ.30572[which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],1,sd))
hist(apply(Dosage.GQ.30572[-which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],1,sd))



GQ.sd.30572.na<-apply(Dosage.GQ.30572[which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],1,sd)

GQ.sd.30572.no.na<-apply(Dosage.GQ.30572[-which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],1,sd)




plotOverlappingHist <- function(a, b, colors=c("white","gray20","gray50"),
                                breaks=NULL, xlim=NULL, ylim=NULL) 
{

  ahist=NULL
  bhist=NULL

  if(!(is.null(breaks))){
    ahist=hist(a,breaks=breaks,plot=F)
    bhist=hist(b,breaks=breaks,plot=F)
  } else {
    ahist=hist(a,plot=F)
    bhist=hist(b,plot=F)

    dist = ahist$breaks[2]-ahist$breaks[1]
    breaks = seq(min(ahist$breaks,bhist$breaks),max(ahist$breaks,bhist$breaks),dist)

    ahist=hist(a,breaks=breaks,plot=F)
    bhist=hist(b,breaks=breaks,plot=F)
  }

  if(is.null(xlim)){
    xlim = c(min(ahist$breaks,bhist$breaks),max(ahist$breaks,bhist$breaks))
  }

  if(is.null(ylim)){
    ylim = c(0,max(ahist$counts,bhist$counts))
  }

  overlap = ahist
  for(i in 1:length(overlap$counts)){
    if(ahist$counts[i] > 0 & bhist$counts[i] > 0){
      overlap$counts[i] = min(ahist$counts[i],bhist$counts[i])
    } else {
      overlap$counts[i] = 0
    }
  }

  plot(ahist, xlim=xlim, ylim=ylim, col=colors[1])
  plot(bhist, xlim=xlim, ylim=ylim, col=colors[2], add=T)
  plot(overlap, xlim=xlim, ylim=ylim, col=colors[3], add=T)
}

plotOverlappingHist(GQ.sd.30572.na,GQ.sd.30572.no.na)

png("GQ_sd.png")
hist(GQ.sd.30572.na,col="red",xlab="GQ",main="Histogram of GQ for 30572")
hist(GQ.sd.30572.no.na,add=T,col="blue")
dev.off()


GQ.sd.30572.na.2<-data.frame(GQ.sd.30572.na)
colnames(GQ.sd.30572.na.2)<-"GQ.sd"

GQ.sd.30572.no.na.2<-data.frame(GQ.sd.30572.no.na)
colnames(GQ.sd.30572.no.na.2)<-"GQ.sd"



GQ.sd.30572.na.2$GQ <- 'na'
GQ.sd.30572.no.na.2$GQ <- 'no_na'

#and combine into your new data frame vegLengths
na.with.no.na <- rbind(GQ.sd.30572.na.2,GQ.sd.30572.no.na.2)


ggplot(na.with.no.na, aes(GQ.sd, fill = GQ)) + geom_density(alpha = 0.2)
ggplot(na.with.no.na, aes(GQ.sd, fill = GQ)) + geom_histogram(alpha = 0.5, binwidth = 1, position = 'identity')


#ggplot(na.with.no.na, aes(GQ.sd, fill = GQ)) + geom_histogram(position = 'identity')





#GQ.mean.30572.na<-apply(Dosage.GQ.30572[which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],1,mean)
GQ.mean.30572.na<-apply(apply(Dosage.GQ.30572[which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],2,as.numeric),1,mean)

#GQ.mean.30572.no.na<-apply(Dosage.GQ.30572[-which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],1,mean)
GQ.mean.30572.no.na<-apply(apply(Dosage.GQ.30572[-which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),8:13],2,as.numeric),1,mean)


GQ.mean.30572.na.2<-data.frame(GQ.mean.30572.na)
colnames(GQ.mean.30572.na.2)<-"GQ.mean"

GQ.mean.30572.no.na.2<-data.frame(GQ.mean.30572.no.na)
colnames(GQ.mean.30572.no.na.2)<-"GQ.mean"

GQ.mean.30572.na.2$GQ <- 'na'
GQ.mean.30572.no.na.2$GQ <- 'no_na'

#and combine into your new data frame vegLengths
mean.na.with.no.na <- rbind(GQ.mean.30572.na.2,GQ.mean.30572.no.na.2)


ggplot(mean.na.with.no.na, aes(GQ.mean, fill = GQ)) + geom_density(alpha = 0.2)
ggplot(mean.na.with.no.na, aes(GQ.mean, fill = GQ)) + geom_histogram(alpha = 0.5, binwidth = 1, position = 'identity')

apply(Dosage.GQ.30572[apply(Dosage.GQ.30572[,8:13],2,as.numeric),1,mean)


Dosage.GQ.30572[which(is.na(apply(Dosage.GQ.30572[,2:7],1,sd))),1:13]


FilterBasedOnGQ<-function(Dosage.GQ.30572.head.2){


sd.GQ.1<-c("GE")
sd.GQ.2<-c("L")

sd.GQ<-list()

for (i in 1:dim(Dosage.GQ.30572.head.2)[1]){

Dosage.GQ.greater.equal.than.median=Dosage.GQ.30572.head.2[i,2:7][1,-(which(apply(Dosage.GQ.30572.head.2[i,8:13],2,as.numeric)<Dosage.GQ.30572.head.2[i,14]))]
Dosage.GQ.less.than.median=Dosage.GQ.30572.head.2[i,2:7][1,(which(apply(Dosage.GQ.30572.head.2[i,8:13],2,as.numeric)<Dosage.GQ.30572.head.2[i,14]))]


print(Dosage.GQ.greater.equal.than.median)
print(sd(Dosage.GQ.greater.equal.than.median))

sd.GQ.1<-c(sd.GQ.1,sd(Dosage.GQ.greater.equal.than.median))


#Dosage.GQ.greater.equal.than.median.2=c(Dosage.GQ.greater.equal.than.median)
#print(Dosage.GQ.greater.equal.than.median.2)

#cat(sd(Dosage.GQ.greater.equal.than.median.2),"\n")

#print(Dosage.GQ.less.than.median)
sd.GQ.2<-c(sd.GQ.2,sd(Dosage.GQ.less.than.median))



}

sd.GQ[[1]]<-sd.GQ.1
sd.GQ[[2]]<-sd.GQ.2

return(sd.GQ)

}


Dosage.GQ.30572.2<-cbind(Dosage.GQ.30572,apply(apply(Dosage.GQ.30572[,8:13],2,as.numeric),1,median))

png("Dosage_sd.png")
hist(as.numeric(sd.GQ.30572[[1]]),col="red",xlab="sd of Dosage",main="Histogram of sd of Dosage for 30572")
hist(as.numeric(sd.GQ.30572[[2]]),add=T,col="blue")
dev.off()

sed -e 's/M/H/g' -e 's/R/H/g' -e 's/W/H/g' -e 's/S/H/g' -e 's/Y/H/g' -e 's/K/H/g' -e 's/N/NA/g'  < WEMA_GBS_1008_hmp_maker2.txt > WEMA_GBS_1008_hmp_maker3.txt
