mydataframe<-read.csv(file,header=logical_valure, sep ="delimiter")

myproject<-read.csv("D:/Study/Aiub/9th Semester/Data Science/Project/Mid/Dataset_midterm.csv",header=TRUE, sep=",")

myproject


#level change
myproject$Blood <- factor(myproject$Blood, levels = c("low","high","normal"), labels = c(0,2,1))
myproject$Blood= as.numeric(myproject$Blood)




# remove missing value
remove_missing_value <- na.omit(myproject) 
myproject<-remove_missing_value


str(myproject)


summary(myproject)


#########################
library(dplyr)

myproject$weight.kg.= as.numeric(myproject$weight.kg.)
mean(myproject$weight.kg.,na.rm = TRUE) #Mean
median(myproject$weight.kg.,na.rm = TRUE) #median

# For modeValue installing packages("DescTools")
library(DescTools)
modeValue <- Mode(myproject$weight.kg.)#mode
modeValue

sort(myproject$weight.kg.)
max(myproject$weight.kg.)

##########################


#########################
library(dplyr)
#Because Blood value was characteristic, have to convert into Numeric
myproject$Blood= as.numeric(myproject$Age)
mean(myproject$Age,na.rm = TRUE) #Mean
median(myproject$Age,na.rm = TRUE) #median


#install.packages("DescTools")
library(DescTools)
modeValue <- Mode(myproject$Age)#mode
modeValue

sort(myproject$Age)
max(myproject$Age)

##########################


#########################
library(dplyr)
#Because Blood value was characteristic, have to convert into Numeric
myproject$Blood= as.numeric(myproject$Blood)
mean(myproject$Blood,na.rm = TRUE) #Mean
median(myproject$Blood,na.rm = TRUE) #median


#install.packages("DescTools")
library(DescTools)
modeValue <- Mode(myproject$Blood)#mode
modeValue

sort(myproject$Blood)
max(myproject$Blood)

##########################
names(myproject)

mean(myproject$Age)



typeof(myproject$id)
typeof(myproject$Age)
typeof(myproject$weight.kg.)
typeof(myproject$Delivery_number)
typeof(myproject$Delivery_time)
typeof(myproject$Blood)
typeof(myproject$Heart)
typeof(myproject$Caesarian)


names(myproject)

#"id"              "Age"             "weight.kg."      "Delivery_number" "Delivery_time"   "Blood"          
#[7] "Heart"           "Caesarian" 

str(myproject)
summary(myproject)

mean(remove_missing_value$Age)

mean(remove_missing_value$Blood)

mean(myproject$id)

mean(myproject$weight.kg.)

mean(myproject$Delivery_number)

mean(myproject$Delivery_time)

mean(myproject$Caesarian)

class(remove_missing_value$Blood)

myproject %>% summarise_if(is.numeric, sd)



myproject$Blood= as.numeric(myproject$Blood)
mean(myproject$Blood,na.rm = TRUE) #Mean
median(myproject$Blood,na.rm = TRUE) #median
modeValue <- Mode(myproject$Blood)#mode
modeValue


###############################################################

#all together

install.packages("matrixStats")
library(matrixStats)
dataset$Interest_rate = rowSds(as.matrix(dataset[,c(2,3)]))
dataset
dataset[ , c(1,3)]
dataset[,2:3]

library(dplyr)
myproject[,2:6] %>% summarise_if(is.numeric, mean)
myproject[,2:6] %>% summarise_if(is.numeric, median)
myproject[,2:6] %>% summarise_if(is.numeric, mode)  

sample_n(myproject,6)

library(dplyr)
myproject$Age = rowSds(as.matrix(myproject[,c(2,3)]))
myproject$Age

#range and standard Deviation 
#install.packages('dplyr')
myproject$Blood <- factor(myproject$Blood, levels = c("low","high","normal"), labels = c(0,2,1))
myproject$Blood= as.numeric(myproject$Blood)

myproject[,2:3] %>% summarise_if(is.numeric, sd)
range(myproject$weight.kg.)


myproject %>% summarise_if(is.numeric, sd)

myproject$age_bloodMax = rowMaxs(as.matrix(myproject[,c(2,6)]))
myproject$age_bloodmedians


range(myproject$weight.kg., na.rm = TRUE) #(na.rm) will avoid the null values(if have)
range_Weight.KG. <- max(myproject$weight.kg.)-min(myproject$weight.kg.)
range_Weight.KG.


s1 <- (myproject$weight.kg.)
sd(s1)
