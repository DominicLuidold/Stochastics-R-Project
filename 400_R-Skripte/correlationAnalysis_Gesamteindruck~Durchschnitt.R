#Zusammenhang Gesamteindrucks zum Modus der anderen Spalten (pro Zeile)

gesamteindruck <- data[, "Gesamteindruck"]
modeMatrix <- matrix(ncol = 1, nrow = nrow(data))

for (row in 1:nrow(data)) {
  modeMatrix[row,] <- mode(data[row, c(2:12)])
}

corValue <- cor(modeMatrix[, 1], gesamteindruck, use = "complete.obs")

plot(modeMatrix[, 1], gesamteindruck, xlab = "Modus der restlichen Angaben", ylab = "Gesamteindruck", main = paste("Modus in Relation zum Gesamteindruck cor:", round(corValue, digits = 4)))
abline(lm(gesamteindruck ~ modeMatrix[, 1]))

