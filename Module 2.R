## Initial Data Set and Function Provided
> assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
> myMean <- function(assignment2) { return(sum(assignment)/length(someData)) }

## Run One of the Function
> myMean
function(assignment2) { return(sum(assignment)/length(someData)) }
> myMean(assignment2)
Error in myMean(assignment2) : object 'assignment' not found
## This shows that 'assignment' was not assigned and I adjusted the function, switching 'assignment2'
## from the external part of the function to 'assignment' .

## Run Two of the Function
> assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
> myMean <- function(assignment) { return(sum(assignment)/length(someData)) }
> myMean(assignment2)
Error in myMean(assignment2) : object 'someData' not found
## This shows that 'someData' was not assigned and I adjusted the function, assigning the value to 'assignment'

## Run Three of the Function
> myMean <- function(assignment) { return(sum(assignment)/length(assignment)) }
> myMean(assignment2)
[1] 19.25
## This shows that the adjustments made earlier were correct and providing me with a functioning function

## Final Code Result ##
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment) { return(sum(assignment)/length(assignment)) }

myMean(assignment2)
