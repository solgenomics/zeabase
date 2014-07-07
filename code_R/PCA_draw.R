random.short.read<-array(sample(c("A","C","G","T"),100,replace=T))
paste(random.short.read,sep="")

ggplot(data = scores, aes(x = PC1, y = PC2, label = rownames(scores))) +
  geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_text(colour = "tomato", alpha = 0.9, size = 4) +
  ggtitle("PCA plot of 011412")

ggplot(data = scores, aes(x = PC1, y = PC2, label = rownames(scores))),
geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_text(colour = "tomato", alpha = 0.9, size = 4) +
  ggtitle("PCA plot of 011412")

ggplot(data=scores, aes(x = PC1, y = PC2,label=rownames(scores)))+
  geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_text(colour = "blue", alpha = 0.9, size = 4,angle = 10) +
  geom_point(data = scores,
             colour = 'red', size = 3)



