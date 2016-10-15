#setwd("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw03/code/scripts")

#Reading in Data 
args=commandArgs(trailingOnly=TRUE)
data=read.csv(paste("../../data/",args[1], sep=""))
data=data[,-1]

#Regressing Sales on TV Advertising
reg_obj_tv=lm(Sales~TV, data=data)
reg_summary_tv=summary(reg_obj_tv)

#Regressing Sales on Newspaper Advertising
reg_obj_news=lm(Sales~Newspaper, data=data)
reg_summary_news=summary(reg_obj_news)

#Regressing Sales on Radio Advertising
reg_obj_radio=lm(Sales~Radio, data=data)
reg_summary_radio=summary(reg_obj_radio)


#Saving tv plot as png
png(filename="../../images/scatterplot-tv-sales.png")
plot(data$TV, data$Sales, main="Scatterplot with Regression Line", xlab="TV Advertising Dollars Spent", ylab="Sales")
abline(reg_obj_tv)
dev.off()


#Saving newspaper plot as png
png(filename="../../images/scatterplot-newspaper-sales.png")
plot(data$Newspaper, data$Sales, main="Scatterplot with Regression Line", xlab="Newspaper Advertising Dollars Spent", ylab="Sales")
abline(reg_obj_news)
dev.off()


#Saving radio plot as png
png(filename="../../images/scatterplot-Radio-sales.png")
plot(data$Radio, data$Sales, main="Scatterplot with Regression Line", xlab="Radio Advertising Dollars Spent", ylab="Sales")
abline(reg_obj_radio)
dev.off()


#Multiple Regression
model=lm(Sales~. , data=data)

#Plotting Residuals Against Fitted values
png(filename="../../images/residual-plot.png")
plot(model, which=1)
dev.off()

#Scale-Location Plot
png(filename="../../images/scale-location-plot.png")
plot(model, which=3)
dev.off()


#Normal QQ Plot 
png(filename="../../images/normal-qq-plot.png")
plot(model, which=2)
dev.off()

save(data, model, reg_obj_tv, reg_obj_radio, reg_obj_news,reg_summary_news,reg_summary_radio, reg_summary_tv, file="../../data/regression.RData")
#write.csv(data, file="/Users/josephfrancia/desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/Advertising.csv")
