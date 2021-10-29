library(arules)
library(arulesViz)
library(RColorBrewer)
# import dataset
data("Groceries")

# looking into the dataset
View(Groceries)
#using apriori() function
rules1 <- apriori(Groceries,
                  parameter = list(supp = 0.1, conf = 0.5))

# using inspect() function
inspect(rules1[1:10])

# using itemFrequencyPlot() function
arules::itemFrequencyPlot(Groceries, topN = 20,
                          col = brewer.pal(8, 'Pastel1'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)")
