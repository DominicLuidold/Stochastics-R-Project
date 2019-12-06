for(row in 1:nrow(data)){
  commaCount <- 0
  
  for(col in 1:ncol(data)){
    modVal <- as.numeric(data[row,col]) %% 1
    
    if(is.na(modVal)){
      next
    }
    
    if(modVal == 0.5){
      commaCount <- commaCount +1
    }
  }
  
  if(commaCount > 0){
    cat("row",row,"\thas comma coumt:", commaCount,"\n")
    commaCount <- 0
  }
}

rm(commaCount)
rm(modVal)
rm(col)
rm(row)
