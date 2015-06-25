#test
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
