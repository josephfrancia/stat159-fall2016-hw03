#setwd("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw03/code/scripts")

args=commandArgs(trailingOnly=TRUE)
data=read.csv(paste("../../data/",args[1], sep=""))
#data=read.csv("/Users/josephfrancia/Desktop/Advertising.csv")
data=data[,-1]
corr=cor(data)

#Newspaper Histogram
png(filename="../../images/histogram-newspaper.png")
hist(data$Newspaper, main="Distribution of Dollar Amount Spent on Newspaper Advertising", xlab="Amount Spent on Newspaper Advertising")
dev.off()

#Radio Histogram
png(filename="../../images/histogram-radio.png")
hist(data$Radio, main="Distribution of Dollar Amount Spent on Radio Advertising", xlab="Amount Spent on Radio Advertising")
dev.off()

#TV Histogram
png(filename="../../images/histogram-tv.png")
hist(data$TV, main="Distribution of Dollar Amount Spent on TV Advertising", xlab="Amount Spent on TV Advertising")
dev.off()

#Sales Histogram
png(filename="../../images/histogram-sales.png")
hist(data$Sales, main="Distribution of Sales", xlab= "Amount of Sales")
dev.off()

#Pairwise Scatterplot
png(filename="../../images/scatterplot-matrix.png")
pairs(data, main="Scatterplot Matrix")
dev.off()


#eda-output.txt
print("eda-output.txt")
sink(file="../../data/eda-output.txt")

print("TV Advertising Summary Statistics")
summary(data$TV)

print("Radio Summary Statistics")
summary(data$Radio)

print("Newspaper Summary Statistics")
summary(data$Newspaper)

print("Revenue Summary Statistics")
summary(data$Sales)

print("Correlation Matrix")
corr
sink()


#Saving correlation matrix 
save(corr, file="../../data/correlation-matrix.RData")


