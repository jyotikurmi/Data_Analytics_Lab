# Perform the following tasks:
# (a) Import mtcars dataset.
# (b) Visualize your data using scatter plots
# (c) Compute the Correlation between mpg and wt variables.

data("mtcars")
head(mtcars, 6)
nrow(mtcars)
plot(mtcars$wt , mtcars$mpg, xlab = 'Weight of Cars', ylab = 'Miles per Gallon', main = 'Scatter Plot for MTCars Weight Vs MPG')
plot(mtcars$disp , mtcars$mpg)
cor(mtcars$wt, mtcars$mpg)
