

sink("trait_CO.txt")

lname=length(colnames(data.makumbi.pheno.154trials))
rn=dim(data.trait.co)[1]


matched=F;
matchedCO="NA";

for(i in 1:lname){

for(j in 1:rn){

if(trim(as.character(colnames(data.makumbi.pheno.154trials)[i]))==trim(as.character(data.trait.co[j,1])))
{
matched=T;
matchedCO=trim(as.character(data.trait.co[j,2]));
#cat(i," ", colnames(data.makumbi.pheno.154trials)[i],"\t",as.character(data.trait.co[j,2]),"\n")
#c(colnames(data.makumbi.pheno.154trials)[i],"\t",as.character(data.trait.co[j,2]))
#break;
}
#else
#{
#cat(colnames(data.makumbi.pheno.154trials)[i],"\t","NA","\n")
#cat(i," ",colnames(data.makumbi.pheno.154trials)[i],"\t","NA","\n");
#break;
#}
#break;
}



#if(matched==F){
cat(i," ",colnames(data.makumbi.pheno.154trials)[i],"\t",matchedCO,"\n")
#rbind(c(colnames(data.makumbi.pheno.154trials)[i],"\t",as.character(data.trait.co[j,2])))
#}
#else
#{
#cat(i," ", colnames(data.makumbi.pheno.154trials)[i],"\t",matchedCO,"\n")
#}

matched=F;
matchedCO="NA";

}


sink()


trait.co<-read.table("trait_CO.txt",header=F)



Read_154_trials <- function(data) {

m=dim(data);
cat(m,"\n");

trial.name<-unique(as.character(data[,4]));


#cat(trial.name,"\n");

n=length(trial.name);

cat(n,"\n");


for (i in 1:n) {

cat(trial.name[i],"\n");
trial.index=which(as.character(data[,4])==trial.name[i]);
cat(trial.index,"\n");

data.trial<-data[c(trial.index),c(7,5,8,6,4,17:55)];

#data.trial.n=length(colnames(data.trial))

#for(j in 1:data.trial.n){
#
#
#
#
#}

mm=dim(data.trial);

cat(mm,"\n");
#print data.trial;
print(data.trial);

#write.table(x, file = "", append = FALSE, quote = TRUE, sep = " ",
#                 eol = "\n", na = "NA", dec = ".", row.names = TRUE,
#                 col.names = TRUE, qmethod = c("escape", "double"),
#                 fileEncoding = "")

write.table(data.trial,file=paste(trial.name[i],".csv"),quote = F, sep = "\t",eol = "\n", na = "NA",row.names = F,col.names = F)


}

}

Read_154_trials(data.makumbi.pheno.154trials2)



project_name	
project_description	
geo_description	
latitude	
longitude	
datum	
altitude	
planting_date	
fertilizer_date	
year	
address


	ENTRY
	REP
	BLOCK
	PLOT
	ENTRY_old
	DESIG
	NOPLT
	NOSV

trait.ontology<-readline(
mGrainYieldTons_GrainWt	CO_322:0000169
sep=" ")


mGrainYieldTons_FieldWt	CO_322:0000005
mAnthesisDate	CO_322:0000030
mASI	CO_322:0000001
mPlantHeightCm	CO_322:0000007
mEarHeightCm	CO_322:0000017
mEarPosition	CO_322:0000020
mRootLodgingPer	CO_322:0000034
mStemLodgingPer	CO_322:0000035
mEPPNo	CO_322:0000021
mBadHuskCoverPer	CO_322:0000150
mEarRotTotalPer	CO_322:0000068
mGrayLeafSpot1_5	CO_322:0000088
mCommonRust1_5	CO_322:0000085
mLeafBlightTurcicum1_5	CO_322:0000092
mLeafRolling1_5	CO_322:0000160
mSenescence0_10	CO_322:0000012
mGrainTexture1_5	CO_322:0000039
mGrainMoisturePer	CO_322:0000033
mPlantStand_NumPerPlot	CO_338:0000083
mVirusMaizeStreak1_5	CO_322:0000100
mEarAspect1_5	CO_322:0000018
mPlantAspect1_5	CO_322:0000011
mDMSorghumPer	CO_322:0000080
mPhaesLeafSpot1_5	CO_322:0000090
mStriga1_5	CO_322:0000158
mLeafBlightMaydis1_5	CO_322:0000057
mStemBorer1_5	CO_322:0000159
)


BreedingProgram	BreedingProgram
NameOfSeries	NameOfSeries
Year	Year
Season	Season
NameOfExperiment	NameOfExperiment

trait.from.154.trails<-as.data.frame(c(intersect(colnames(data.makumbi.pheno.154trials),data.trait.co[,1])))
colnames(trait.from.154.trails)<-"Trait"

merge(trait.from.154.trails,data.trait.co)


 [1] "mAnthesisDate"     "mASI"              "mBadHuskCoverPer" 
 [4] "mEarHeightCm"      "mEarPosition"      "mEarRotTotalPer"  
 [7] "mEPPNo"            "mGrainMoisturePer" "mPlantHeightCm"   
[10] "mRootLodgingPer"   "mStemLodgingPer"  
http://www.cropontology.org/serve/AMIfv96o8fh1tD8ahr1VUkO7YLgGkrMrcOpN9A-xV57dXugPgxoaWC1jozSNCshwtoAxyo-_cgmzKkg1BI9j3TF7udqJLuYiynjnpS2wMTRy0NhgB1EBtd7cW6UZIhwa9od0Syx_mSxyvNz_WJ_b-6rwHBFa_9NPkszncTgDx_L5-OB2rT84Oeo




Read_154_trials(data.makumbi.pheno.154trials)

