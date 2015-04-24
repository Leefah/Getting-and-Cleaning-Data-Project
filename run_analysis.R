setwd("C:/Users/leefah/Documents/Coursera/Getting and Cleaning Data/Project")
TrainSub<-read.table("subject_train.txt")
TestSub<-read.table("subject_test.txt")
subject<-rbind(TrainSub, TestSub)
colnames(subject)<-c("subject")

Ytrain<-read.table("y_train.txt")
Ytest<-read.table("y_test.txt")
activity<-rbind(Ytrain, Ytest)
colnames(activity)<-c("activity")

Xtrain<-read.table("X_train.txt")
Xtest<-read.table("X_test.txt")
dat<-rbind(Xtrain, Xtest)
feature<-read.table("features.txt")
varname<-feature$V2
colnames(dat)<-varname

dfall<-cbind(subject,activity,dat)


NameVar<-names(dfall)
labels<-c("subject","activity",NameVar[grep("mean",NameVar)],NameVar[grep("std",NameVar)])
index<-which(NameVar %in% labels)

df<-dfall[,index]

df$activity<-factor(df$activity)
levels(df$activity)<-c("walking","walking_upstairs","walking_downstairs","sitting","standing","laying")

subdf<-subset(df,select=c(names(df)[3:81]))
dfavg<-aggregate(subdf,by=list(subject=df$subject,activity=df$activity),FUN=mean, na.rm=T)

tidyname<-gsub("-|\\(|\\)|\\s","",names(dfavg))
colnames(dfavg)<-tidyname

write.table(dfavg, "C:/Users/leefah/Documents/Coursera/Getting and Cleaning Data/Project/tidydata.txt",row.names=F)



