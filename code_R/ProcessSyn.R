#source("/home/aiminy/code/code_R/ProcessSyn.R")

SYNATC.1<-read.xls("SYNATC-1 six loc.xlsx") 
SynATC.2<-read.xls("SynATC-2.xlsx")         
SynBTC.1<-read.xls("SynBTC-1.xlsx")        
SynBTC.2<-read.xls("SynBTC-2.xlsx")         
SYNBTC.3<-read.xls("SYNBTC-3.xlsx")        

write.table(SYNATC.1,file = "synatc1.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(SynATC.2,file = "synatc2.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(SynBTC.1,file = "synbtc1.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(SynBTC.2,file = "synbtc2.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(SYNBTC.3,file = "synbtc3.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)






dim(SYNATC.1) 
dim(SynATC.2) 
dim(SynBTC.1) 
dim(SynBTC.2) 
dim(SYNBTC.3)

SYNATC.1
SynATC.2 
SynBTC.1 
SynBTC.2 
SYNBTC.3

synatc.1.part<-SYNATC.1[,c(9,6,7,8,12:41,43)]
synatc.1.part

#synatc.2.part<-SynATC.2[,c(9,6,7,8,12:41,43)]
SynATC.2
colnames(SynATC.2)

exp.index.SynATC.2=which(colnames(SynATC.2)=="X.68")
SynATC.2[,exp.index.SynATC.2]
synatc.2.part.2<-SynATC.2[,c(9,6,7,8,12:41,exp.index.SynATC.2)]

synatc.2.part.2

SynBTC.1
colnames(SynBTC.1)
#synbtc.1.part<-SynBTC.1[,c(8,6,7,8,12:41,43)]
#which(colnames(SynBTC.1)=="X.67")
synbtc.1.part<-SynBTC.1[,c(8,5,6,7,11:40,118)]

#synbtc.2.part<-SynBTC.2[,c(9,6,7,8,12:41,43)]

SynBTC.2
colnames(SynBTC.2)
synbtc.2.part<-SynBTC.2[,c(8,5,6,7,11:40,118)]

#synbtc.3.part<-SYNBTC.3[,c(9,6,7,8,12:41,43)]
SYNBTC.3
colnames(SYNBTC.3)

synbtc.3.part<-SYNBTC.3[,c(8,5,6,7,11:40,118)]




write.table(synatc.1.part, file = "synatc_1_part.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(synatc.2.part.2, file = "synatc_2_part.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(synbtc.1.part, file = "synbtc_1_part.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(synbtc.2.part, file = "synbtc_2_part.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)

write.table(synbtc.3.part, file = "synbtc_3_part.txt", append = FALSE, quote = FALSE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE)


