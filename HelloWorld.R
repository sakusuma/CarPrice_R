# print("Hello World")
# x<-123
# X=10
# print(x)
# print(X)
# setting the working directory
setwd("C:/Users/sakusuma/Downloads")
#loading the csv into a dataframe
Printers = read.csv("Automobile_Data.csv", header = TRUE, sep=",")
#Find the summary of the dataset
summary(Printers)
#Checking the first or top 5 rows of the dataset
head(Printers)
tail(Printers)
#plotting a scatter plot, cex indicates the size, lwd indicates the linewidth
plot(Printers$price, Printers$length, cex = 1.1, lwd = 10)
#Find the correlation between the two columns
cor(Printers$price, Printers$length)
# Creating a linear model , left side is dependent and right side is independent variables 
LinMod = lm(Printers$price~Printers$length, data=Printers)
#Summary of the linear model created
summary(LinMod)
#Plotting the best fit line determined from the linear model
plot(Printers$length, Printers$price, cex = 1.3, lwd = 10)
abline(LinMod)