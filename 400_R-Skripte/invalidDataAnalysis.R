# Finde Kommazahlen, die in Ausgangsdaten vorkommen
data.withoutComma <- matrix(ncol = 12)
data.onlyComma <- matrix(ncol = 12)

commaCountMatrix <- matrix(ncol = 2)
naCountMatrix <- matrix(ncol = 2)

for (row in 1:nrow(data)) {
  commaCount <- 0
  naCount <- 0

  for (col in 1:ncol(data)) {
    modVal <- as.numeric(data[row, col]) %% 1

    if (is.na(modVal)) {
      naCount <- naCount + 1
      next
    }

    if (modVal == 0.5) {
      commaCount <- commaCount + 1
    }
  }

  if (commaCount > 0) {
    data.onlyComma <- rbind(data.onlyComma, data[row,])
    commaCountMatrix <- rbind(commaCountMatrix, c(row, commaCount))

    commaCount <- 0
  }
  else {
    data.withoutComma <- rbind(data.withoutComma, data[row,])
  }

  if (naCount > 0) {
    naCountMatrix <- rbind(naCountMatrix, c(row, naCount))
  }
}

# Setze colnames
colnames(commaCountMatrix) <- c("dataSet", "commaCount")
colnames(naCountMatrix) <- c("dataSet", "naCount")

# "NULL"-Zeilen aus Daten-Matrix entfernen
data.withoutComma <- data.withoutComma[-1,]
data.onlyComma <- data.onlyComma[-1,]
commaCountMatrix <- commaCountMatrix[-1,]
naCountMatrix <- naCountMatrix[-1,]

# Plots für Kommazahlen, die in Ausgangsdaten vorkommen, erstellen
boxplot(commaCountMatrix[, "commaCount"], col = "#94d639", ylab = "Anzahl Kommazahlen", main = "Kommazahlen in Ausgangsdaten")
barplot(commaCountMatrix[, "commaCount"], names.arg = commaCountMatrix[, "dataSet"], xlab = "Zeile, in der Kommazahl vorkommt (Dataset)", ylab = "Anzahl Kommazahlen", main = "Kommazahlen in Ausgangsdaten")

# Plots für "NA"-Werte, die in Ausgangsdaten vorkommen, erstellen
boxplot(naCountMatrix[, "naCount"], col = "#94d639", ylab = "Anzahl \"NA\"-Werte", main = "\"NA\"-Werte in Ausgangsdaten")
barplot(naCountMatrix[, "naCount"], names.arg = naCountMatrix[, "dataSet"], xlab = "Zeile, in der \"NA\"-Wert vorkommt (Dataset)", ylab = "Anzahl \"NA\"-Werte", main = "\"NA\"-Werte in Ausgangsdaten")

# Environment aufräumen
rm(commaCount)
rm(modVal)
rm(col)
rm(row)
rm(naCount)
