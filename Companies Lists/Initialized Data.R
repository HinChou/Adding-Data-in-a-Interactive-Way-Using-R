original_list <- matrix("0",1,5)
colnames(original_list) <- c("Bankings", "Researches", "Brokerages", "Consultings", "Technologies")

original_list <- as.data.frame(original_list)
original_list$Bankings <- as.character(original_list$Bankings)
original_list$Researches <- as.character(original_list$Researches)
original_list$Brokerages <- as.character(original_list$Brokerages)
original_list$Consultings <- as.character(original_list$Consultings)
original_list$Technologies <- as.character(original_list$Technologies)