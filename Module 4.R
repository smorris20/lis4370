## Data Provided by Instructor
frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

## Creating the Data Frame
dataCollection <- data.frame(frequency, bp, first, second, finalDecision)
dataCollection
## The dataframe appears with all of the data organized similar to the
## table provided by the instructor for the assignment.

## Creating the Box Plot
boxplot(dataCollection)
## The box plot for bp information overtakes all of the other data,
## making it impossible to read the data from those columns. 
## However, since most of the other data ranges between 0 and 1,
## I decide to normalize the "bp" values to the same range.

## Modifying blood pressure to normalize between 0 and 1.
standardBP <- (bp - min(bp))/(max(bp)-min(bp))
standardBP
boxplot(standardBP)
boxplot(bp)
## Both box plots show that the data for "bp" and "standardBP"
## match exactly despite the data from "standardBP" being normalized.

## Creating a second dataframe with the updated values
dataCollection2 <- data.frame(frequency, standardBP, first, second, finalDecision)
## I decide to update the names for each of the columns of data,
## just so the formatting looks nice.
names(dataCollection2)[1] <- "Frequency"
names(dataCollection2)[2] <- "Blood Pressure"
names(dataCollection2)[3] <- "First Doctor"
names(dataCollection2)[4] <- "Second Doctor"
names(dataCollection2)[5] <- "Final Decision"
dataCollection2

## Creating a box plot for the second dataframe
boxplot(dataCollection2)
## The boxplots are all created and show the spread of each column
## of values. Because of the values for the last three columns are
## logical, using only 0 or 1, the values these box plots display are
## anchored specifically to these values.

## Creating histograms for each column of data
hist(frequency)
hist(bp)
hist(first)
hist(second)
hist(finalDecision)
## The last three histograms for each column of data again show that
## their logical values anchor the information to either 0 or 1. One
## thing that is noticeable in the histogram of "first" is that there
## are only 9 data points captured because one data point was missing.