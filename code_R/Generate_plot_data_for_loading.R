Generate.plot.data.for.loading<-function(file.name){

data.for.read.1<-read.xls(file.name,sheet=1)
data.for.read.2<-read.xls(file.name,sheet=2)
data.for.read.3<-read.xls(file.name,sheet=3)

#print(dim(data.for.read.1))
#print(dim(data.for.read.2))
#print(dim(data.for.read.3))

#data.for.read<-read.xls(file.name,sheet=1)
#print(data.for.read.1)
#print(data.for.read.2)
#print(data.for.read.3)


#rn=dim(data.for.read.1)[1]
#cn=dim(data.for.read.1)[2]

#cat(rn,cn,"\n");

#data.6x1008.for.read.1[2:length(data.6x1008.for.read.1[,5]),c(5,5,6,7,3)]



#print(file.name)
#print(data.metadata)
#file.name2=sub(".*\", "",file.name);
#file.name2=gsub(".*/", "",file.name);
#file.name3=substr(file.name2,12,17);

#cat(file.name3,"\n");


#write.table(data.metadata,file=paste(file.name3, ".csvmetadata",sep=""),append = F, quote = F, na = "",sep = "\t",eol = "\n",row.names = F,col.names = T)

data.for.read.2.3<-rbind(data.for.read.2,data.for.read.3)

rn.csv=dim(data.for.read.2.3)[1]
cn.csv=dim(data.for.read.2.3)[2]

site=unique(data.for.read.2.3[,1])

for(j in 1:length(site)){


ename=paste(data.for.read.1[j+1,1],site[j],sep="");


data.metadata<-cbind(ename,
ename,
paste(data.for.read.1[j+1,6],data.for.read.1[j+1,7],sep="_"),
c(rep(NA,1)),
c(rep(NA,1)),
c(rep(NA,1)),
c(rep(NA,1)),
c(rep(NA,1)),
c(rep(NA,1)),
as.character(data.for.read.1[j+1,3]),
c(rep(NA,1))
)


#data.metadata<-data.frame();
colnames(data.metadata)<-c("project_name","project_description","geo_description","latitude","longitude","datum","altitude","planting_date","fertilizer_date","year","address")

ern=dim(data.for.read.2.3[which(data.for.read.2.3[,1]==site[j]),])[1];
NameOfExperiment=c(rep(ename,ern));

data.csv<-cbind(data.for.read.2.3[which(data.for.read.2.3[,1]==site[j]),],NameOfExperiment);


#file.name3=substr(file.name,1,50);
file.name3=substr(file.name,1,17);

pop_name_ename=paste(file.name3,ename,sep="_");


cat(paste(pop_name_ename, ".csvmetadata",sep=""),"\t",paste(pop_name_ename, ".csv",sep=""),"\n");

write.table(data.metadata,file=paste(pop_name_ename, ".csvmetadata",sep=""),append = F, quote = F, na = "",sep = "\t",eol = "\n",row.names = F,col.names = T)

write.table(data.csv,file=paste(pop_name_ename, ".csv",sep=""),append = F, quote = F, na = "",sep = "\t",eol = "\n",row.names = F,col.names = T)


}

}

#Generate.plot.data.for.loading("./Link genotypes with phenotypes/Clean data 6x1008.xlsx")


#latitude"
#longitude
#datum
#altitude
#planting_date
#fertilizer_date
#year
#address 

#project_name	project_description	geo_description	latitude	longitude	datum	altitude	planting_date	fertilizer_date	year	address
#WET10B-EVALTC-12-2	WET10B-EVALTC-12-2	Kakamega_Kenya					26-Mar-10		2010	


#LOC	Rep	Block	Plot	Entry	GY	AD	PH	EPP


#								mGrainYieldTons_FieldWt	mAnthesisDate	mASI	mPlantHeightCm	mEarHeightCm	mEarPosition	mRootLodgingPer	mStemLodgingPer	#mEPPNo#mBadHuskCoverPe#3mEarRotTotalPer	mGrayLeafSpot1_5	mCommonRust1_5	mLeafBlightTurcicum1_5	mLeafRolling1_5	mSenescence0_10	mGrainTexture1_5	mGrainMoisturePer	#mPlantStand_NumPerPlot	#mVirusMaizeStreak1_5	#mEarAspect1_5	mPlantAspect1_5	mDMSorghumPer	mPhaesLeafSpot1_5	mStriga1_5	mLeafBlightMaydis1_5	mStemBorer1_5	BreedingProgram	#NameOfSeries	Year	Season	NameOfExperiment
#ENTRY	REP	BLOCK	PLOT	ENTRY_old	DESIG	NOPLT	NOSV	CO_322:0000005	CO_322:0000030	CO_322:0000001	CO_322:0000007	CO_322:0000017	CO_322:0000020	CO_322:0000034	#CO_322:0000035	CO_322:0000021	#CO_322:0000150	#CO_322:0000068	CO_322:0000088	CO_322:0000085	CO_322:0000092	CO_322:0000160	CO_322:0000012	CO_322:0000039	CO_322:0000033	CO_338:0000083	#CO_322:0000100	CO_322:0000018	CO_322:0000011	CO_322:0000080	#CO_322:0000090	#CO_322:0000158	CO_322:0000057	CO_322:0000159	BreedingProgram	NameOfSeries	Year	Season	NameOfExperiment


#write.table(data.for.read[2:length(data.for.read[,2]),2],file=".csv",append = T, quote = F, sep = "\t",eol = "\n",row.names = F,col.names = F);

#write.table(data.for.read[2:length(data.for.read[,2]),2],file="F3_name.csvmetadata",append = T, quote = F, sep = "\t",eol = "\n",row.names = F,col.names = F);