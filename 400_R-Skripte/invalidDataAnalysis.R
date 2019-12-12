data.withoutComma <- matrix(ncol = 12)
data.onlyComma <- matrix(ncol = 12)

invalidCount <- matrix(ncol = 2)

for (row in 1:nrow(data)) {
  commaCount <- 0

  for (col in 1:ncol(data)) {
    modVal <- as.numeric(data[row, col]) %% 1

    if (is.na(modVal)) {
      next
    }

    if (modVal == 0.5) {
      commaCount <- commaCount + 1
    }
  }

  if (commaCount > 0) {
    cat("row", row, "\thas comma coumt:", commaCount, "\n")
    data.onlyComma <- rbind(data.onlyComma, data[row,])
    invalidCount <- rbind(invalidCount, c(row, commaCount))

    commaCount <- 0
  }
  else {
    data.withoutComma <- rbind(data.withoutComma, data[row,])
  }
}

#colnames(invalidCount,c("dataSet","commaCount"))


#remove null row from matrix
data.withoutComma <- data.withoutComma[-1,]
data.onlyComma <- data.onlyComma[-1,]
invalidCount <- invalidCount[-1,]


boxplot(invalidCount[, 2])
barplot(invalidCount[, 2])





#cleanup
rm(commaCount)
rm(modVal)
rm(col)
rm(row)
