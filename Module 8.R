## Setting Libraries and confirming working directory
library(plyr)
library(tidyverse)
getwd()

## Reading in Table file
student <- read.table("assignment6.txt", header = TRUE,
                                   sep = ",")
student

## Grouping the Table by Sex and Creating a new variable called
## Grade.Average that calculates the Average based on Sex
studentAverage <- ddply(student, "Sex", transform,
                        Grade.Average = mean(Grade))
studentAverage

## Displaying the Average based on Sex in a table
sexAverage <- aggregate(studentAverage[, 4], list(studentAverage$Sex), mean)
colnames(sexAverage) <- c("Sex", "Grade.Average")
sexAverage

## Create a subset of the Students whose name begins with "I"
letterI <- grep("i", student$Name, ignore.case = TRUE)
studentI <- data.frame(student[letterI,])
studentI

## Save the filtered subset as a CSV file
write_csv(studentI, "C:\\Users\\Sparrow\\Desktop\\studentI.csv", na = "NA")
