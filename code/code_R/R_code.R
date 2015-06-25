

data.tony.masterstack[which(data.tony.masterstack[,1]==2&data.tony.masterstack[,2]==30&data.tony.masterstack[,3]==379&data.tony.masterstack[,4]==100),]


write.table(data.tony.masterstack[(as.character(data.tony.masterstack[,41])=="WET10B-EVALTC-12-1"),], file ="WET10B-EVALTC-12-1.csv", append = FALSE, quote = FALSE, sep = "/t",row.names = FALSE,col.names = TRUE)



