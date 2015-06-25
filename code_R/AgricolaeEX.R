trt <-c("CIP-101","CIP-201","CIP-301","CIP-401","CIP-501")
r <-c(4,3,5,4,3)
# seed = 12543
outdesign1 <-design.crd(trt,r,serie=2,2543,"Mersenne-Twister")
book1<-outdesign1

