## Initial Data Set Provided
Name <- c("Jeb", “Donald”, "Ted”, “Marco” “Carly”, “Hillary”, “Berine”)
ABC political poll results <- c(4, 62 51, 21, 2, 14, 15)
CBS political poll results <- c(12, 75, 43, 19, 1, 21, 19)

## Run One of the Data Set
> Name <- c("Jeb", “Donald”, "Ted”, “Marco” “Carly”, “Hillary”, “Berine”)
Error: unexpected input in "Name <- c("Jeb", “"
> ABC political poll results <- c(4, 62 51, 21, 2, 14, 15)
Error: unexpected symbol in "ABC political"
> CBS political poll results <- c(12, 75, 43, 19, 1, 21, 19) 
Error: unexpected symbol in "CBS political"
## This shows that there are a number of errors throughout the data set provided.
## For theNname list, the quotation marks are not being acknowledged and will need to be adjusted
## to standard ones (" "). Also, Bernie's name is misspelled and will be corrected, along with
## lowercasing the "n" in Names so the formatting is correct for R.
## For the ABC and CBS poll lists, the names are not correctly formated and will be adjusted
## to abcPoll and cbsPoll, respectively.

## Run Two of the Data Set
> name <- c("Jeb", "Donald", "Ted", "Marco" "Carly", "Hillary", "Bernie")
Error: unexpected string constant in "Name <- c("Jeb", "Donald", "Ted", "Marco" "Carly""
> abcPoll <- c(4, 62 51, 21, 2, 14, 15)
Error: unexpected numeric constant in "abcPoll <- c(4, 62 51"
> cbsPoll <- c(12, 75, 43, 19, 1, 21, 19)
## This run shows missing commas after Marco's name in the name list and the 62 value in the
## abcPoll list, which I include.

## Run Three of the Data Set
> name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
> abcPoll <- c(4, 62, 51, 21, 2, 14, 15)
> cbsPoll <- c(12, 75, 43, 19, 1, 21, 19)
## This run is successful and allows me to create the required data frame requested. To create
## it, I will use the name list for the row.names and the abcPoll and cbsPoll lists as the
## individual data points. The name of the data frame is dataPoll

## Creating the Data Frame
> dataPoll <- data.frame(abcPoll, cbsPoll, row.names = name)
> dataPoll
abcPoll cbsPoll
Jeb           4      12
Donald       62      75
Ted          51      43
Marco        21      19
Carly         2       1
Hillary      14      21
Bernie       15      19
