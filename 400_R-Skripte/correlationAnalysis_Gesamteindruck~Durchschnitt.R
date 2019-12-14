# Bestimmen des Zusammenhangs zwischen Gesamteindruck und Median der übrigen Spalten
# (jeweils pro Zeile bzw. befragter Person)

gesamteindruck <- data[, "Gesamteindruck"]
medianMatrix <- matrix(ncol = 1, nrow = nrow(data))

for (row in 1:nrow(data)) {
  medianMatrix[row,] <- median(data[row, c(2:12)], na.rm = TRUE)
}

# Korrelation ausrechnen ("NA" - Werte werden ignoriert)
corValue <- cor(medianMatrix[, 1], gesamteindruck, use = "complete.obs")

# Plot sowie Regressionsgerade für Zusammenhang erstellen
plot(medianMatrix[, 1], gesamteindruck, xlab = "Median der restlichen Angaben", ylab = "Gesamteindruck", main = paste("Median in Relation zum Gesamteindruck, cor:", round(corValue, digits = 4)))
abline(lm(gesamteindruck ~ medianMatrix[, 1]))
