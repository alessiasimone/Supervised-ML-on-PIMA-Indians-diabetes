row.names(dataset) <- dataset$X
dataset <- dataset[,2:10]
dataset$Class_variable <- factor(dataset$Class_variable, labels=c('No', 'Yes'))
dataset$pregnant_times <- cut(dataset$pregnant_times, breaks=c(0:3,4,17), labels= c('0','1','2','3','4+'), right=FALSE, ordered_result=T)
attach(dataset)

ggplot(dataset,aes(x=pregnant_times))+
  geom_bar(aes(y = (..count..)/sum(..count..)))+
  scale_y_continuous(labels=scales::percent)+ 
  ylab('Percentage')+
  xlab('Pregnant times')+
  ggtitle('Barplot of "pregnant_times" variable')


