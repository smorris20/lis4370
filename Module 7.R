## S3 Example 1
items <- list(name = c("Anne", "Bert", "Charlie", "Diana"),
              age = c(14, 15, 13, 15), pet = c("cat", "cat", "dog", "horse"))
str(items)
items

## S3 Example 2
tests <- list(IDnum = c(5312, 6424, 4789, 3312, 9054, 1693),
              exam1 = c(95, 100, 84, 65, 78, 100),
              exam2 = c(85, 100, 90, 84, 91, 72),
              comment1 = c("Good", "Excellent", "Great", "OK", "Great", "Good"))
str(tests)
tests

## S4 Example 1
setClass("student",
         representation(
           name = "character",
           age = "numeric",
           pet = "character",
           lunch = "logical")
         )

anne <- new("student", name = "Anne", age = 14, pet = "cat", lunch = FALSE)
anne

anne@age <- 16
anne
anne@lunch <- TRUE

## S4 Example 2
setClass("videogame",
         representation(
           name = "character",
           type = "character",
           sales = "numeric",
           onSale = "logical")
         )

ffxiv <- new("videogame", name = "Final Fantasy XIV", type = "RPG",
             sales = 40000000, onSale = FALSE)
cod <- new("videogame", name = "Call of Duty", type = "FPS",
           sales = 25000000, onSale = TRUE)
ffxiv
cod

ffxiv@sales <- 41235678
cod@sale <- 25222555
## I didn't notice at first when I was going through everything that I misspelled the sales variable
## for the object and what occurred was the R threw an error.
Error in (function (cl, name, valueClass)  : 
  ‘sale’ is not a slot in class “videogame” 
## S4 Objects have safety as part of their creation, and will not function correctly due to misspelling.
## Also, unlike S3, it will not try to create a new variable called "sale".
cod@onSale <- FALSE

ffxiv
cod

cod@sales <- 25222555
cod
