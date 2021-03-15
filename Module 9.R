## Data set used for the Assignment
str(mtcars)

## First Visualization
plot(x = mtcars$mpg, y = mtcars$hp,
     main = "Car horsepower over miles per gallon",
     xlab = "Miles per gallon", ylab = "Horsepower")

## Second Visualization
xyplot(mtcars$hp~mtcars$mpg,
       xlab = "Miles per gallon", ylab = "Horsepower",
       main = "Car horsepower over miles per gallon")

## Third Visualization
ggplot(mtcars, aes(x = mpg, y = hp, color = wt, size = 1)) +
  geom_jitter(width = 0.1, height = 0.1) +
  ggtitle("Car horsepower over miles per gallon") +
  xlab("Miles per gallon") +
  ylab("Horsepower")
  
