myproject2<-read.csv("D:/Study/Aiub/9th Semester/Data Science/Project/Mid/Dataset_midterm_Outlier.csv",header=TRUE, sep=",")

myproject2

myproject2$Age[myproject2$Age==""] <- NA
myproject2$weight.kg.[myproject2$weight.kg.==""] <- NA
myproject2$Delivery_number[myproject2$Delivery_number==""] <- NA
myproject2$Delivery_time[myproject2$Delivery_time==""] <- NA
myproject2$Blood[myproject2$Blood==""] <- NA
myproject2$Heart[myproject2$Heart==""] <- NA
myproject2$Caesarian[myproject2$Caesarian==""] <- NA

## Removing Attributes from Dataset
myproject2.1 <- subset(myproject2.1, select = -Price)


colSums(is.na(myproject2))


sum(is.na(myproject2$weight.kg.))


index_vec = c(1:80)
plot(index_vec,myproject2$Age)
myproject2$Age[myproject2$Age<=50] <- NA

index_vec = c(1:80)
plot(index_vec,myproject2$weight.kg.)
myproject2$weight.kg.[myproject2$weight.kg.<=90] <- NA

which(is.na(myproject2$Age))
which(is.na(myproject2$weight.kg.))
which(is.na(myproject2$Delivery_number))
which(is.na(myproject2$Delivery_time))
which(is.na(myproject2$Blood))
which(is.na(myproject2$Caesarian))
which(is.na(myproject2$Heart))



#factor categorical data
myproject2$Blood = factor(myproject2$Blood,
                       levels = c("low","normal","high"),
                       labels = c(1,2,3))

myproject2<- na.omit(myproject2)
myproject2


myproject2$Blood= as.numeric(myproject2$Blood)

myproject2.1 <- myproject2
mean1 <- mean(myproject2.1$Age, na.rm = TRUE)
mean1
mean2 <- mean(myproject2.1$weight.kg., na.rm = TRUE)
mean2
mean3 <- mean(myproject2.1$Blood, na.rm = TRUE)
mean3
myproject2.1$Age[is.na(myproject2.1$Age)] <- mean1
myproject2.1$weight.kg.[is.na(myproject2.1$weight.kg.)] <- mean2
myproject2.1$Blood[is.na(myproject2.1$Blood)] <- mean3

myproject2.1



###Mean

myproject2.1 <- myproject2
mean5 <- mean(myproject2.1$Age, na.rm = TRUE)
mean5
mean6 <- mean(myproject2.1$weight.kg., na.rm = TRUE)
mean6
mean7 <- mean(myproject2.1$Blood, na.rm = TRUE)
mean7
mean8 <- mean(myproject2.1$Caesarian, na.rm = TRUE)
mean8
mean9 <- mean(myproject2.1$Delivery_number, na.rm = TRUE)
mean9
mean10 <- mean(myproject2.1$Delivery_time, na.rm = TRUE)
mean10

myproject2.1$Age[is.na(myproject2.1$Age)] <- mean5
myproject2.1$weight.kg.[is.na(myproject2.1$weight.kg.)] <- mean6
myproject2.1$Blood[is.na(myproject2.1$Blood)] <- mean7
myproject2.1$Caesarian[is.na(myproject2.1$Caesarian)] <- mean8
myproject2.1$Delivery_number[is.na(myproject2.1$Delivery_number)] <- mean9
myproject2.1$Delivery_time[is.na(myproject2.1$Delivery_time)] <- mean10

myproject2.1

##MODE

myproject2.1 <- myproject2
mode5 <- Mode(myproject2.1$Age, na.rm = TRUE)
mode5
mode6 <- Mode(myproject2.1$weight.kg., na.rm = TRUE)
mode6
mode7 <- Mode(myproject2.1$Blood, na.rm = TRUE)
mode7
mode8 <- Mode(myproject2.1$Caesarian, na.rm = TRUE)
mode8
mode9 <- Mode(myproject2.1$Delivery_number, na.rm = TRUE)
mode9
mode10 <- Mode(myproject2.1$Delivery_time, na.rm = TRUE)
mode10

myproject2.1$Age[is.na(myproject2.1$Age)] <- mode5
myproject2.1$weight.kg.[is.na(myproject2.1$weight.kg.)] <- mode6
myproject2.1$Blood[is.na(myproject2.1$Blood)] <- mode7
myproject2.1$Caesarian[is.na(myproject2.1$Caesarian)] <- mode8
myproject2.1$Delivery_number[is.na(myproject2.1$Delivery_number)] <- mode9
myproject2.1$Delivery_time[is.na(myproject2.1$Delivery_time)] <- mode10

myproject2.1



##MEDIAN


myproject2.1 <- myproject2
Median5 <- Median(myproject2.1$Age, na.rm = TRUE)
Median5
Median6 <- Median(myproject2.1$weight.kg., na.rm = TRUE)
Median6
Median7 <- Median(myproject2.1$Blood, na.rm = TRUE)
Median7
Median8 <- Median(myproject2.1$Caesarian, na.rm = TRUE)
Median8
Median9 <- Median(myproject2.1$Delivery_number, na.rm = TRUE)
Median9
Median10 <- Median(myproject2.1$Delivery_time, na.rm = TRUE)
Median10

myproject2.1$Age[is.na(myproject2.1$Age)] <- Median5
myproject2.1$weight.kg.[is.na(myproject2.1$weight.kg.)] <- Median6
myproject2.1$Blood[is.na(myproject2.1$Blood)] <- Median7
myproject2.1$Caesarian[is.na(myproject2.1$Caesarian)] <- Median8
myproject2.1$Delivery_number[is.na(myproject2.1$Delivery_number)] <- Median9
myproject2.1$Delivery_time[is.na(myproject2.1$Delivery_time)] <- Median10

myproject2.1









