#Zusammenhang Gesamteindrucks zum Median der anderen Spalten (pro Zeile)

gesamteindruck <- data[, "Gesamteindruck"]
medianMatrix <- matrix(ncol = 1, nrow = nrow(data))

for (row in 1:nrow(data)) {
  medianMatrix[row,] <- median(data[row, c(2:12)], na.rm = TRUE)
}

corValue <- cor(medianMatrix[, 1], gesamteindruck, use = "complete.obs")

plot(medianMatrix[, 1], gesamteindruck, xlab = "Median der restlichen Angaben", ylab = "Gesamteindruck", main = paste("Median in Relation zum Gesamteindruck, cor:", round(corValue, digits = 4)))
abline(lm(gesamteindruck ~ medianMatrix[, 1]))

