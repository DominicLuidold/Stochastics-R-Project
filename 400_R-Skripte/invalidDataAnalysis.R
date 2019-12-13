#find float values in data
data.withoutComma <- matrix(ncol = 12)
data.onlyComma <- matrix(ncol = 12)

commaCountMatrix <- matrix(ncol = 2)
naCountMatrix <- matrix(ncol=2)

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
    cat("row", row, "\thas comma count:", commaCount, "\n")
    data.onlyComma <- rbind(data.onlyComma, data[row,])
    commaCountMatrix <- rbind(commaCountMatrix, c(row, commaCount))

    commaCount <- 0
  }
  else {
    data.withoutComma <- rbind(data.withoutComma, data[row,])
  }
  
  if(naCount > 0){
    cat("row",row,"\thas na count:",naCount,"\n")
    naCountMatrix <- rbind(naCountMatrix,c(row,naCount))
  }
}

#set colnames
colnames(commaCountMatrix) <- c("dataSet", "commaCount")
colnames(naCountMatrix) <- c("dataSet","naCount")


#remove null row from matrix
data.withoutComma <- data.withoutComma[-1,]
data.onlyComma <- data.onlyComma[-1,]
commaCountMatrix <- commaCountMatrix[-1,]
naCountMatrix <- naCountMatrix[-1,]


#create plots for float values in data
boxplot(commaCountMatrix[, "commaCount"], col="#94d639", ylab = "Number of float values", main = "Float values in data")
barplot(commaCountMatrix[, "commaCount"], names.arg = commaCountMatrix[, "dataSet"], xlab = "Dataset", ylab = "Number of float values", main = "Float values in data")

#create plots for na values in data
boxplot(naCountMatrix[,"naCount"],col="#94d639",ylab ="Number of NA values",main = "NA values in data")
barplot(naCountMatrix[,"naCount"],names.arg=naCountMatrix[,"dataSet"],xlab = "Dataset",ylab ="Number of NA values",main = "NA values in data")




#cleanup
rm(commaCount)
rm(modVal)
rm(col)
rm(row)
rm(naCount)
