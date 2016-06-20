Extensional.Lists <- function(original_list, new_list= "0", eraser = "0")
{
  temp <- matrix("0",1,5)
  colnames(temp) <- c("Bankings", "Researches", "Brokerages", "Consultings", "Technologies")
  temp <- as.data.frame(temp)
  
  if(new_list != 0)
  {
    
    print("Inserting: What kind of company is this one? (1.'BA', 2.'R', 3.'BR', 4.'C', 5.'T')")
    
    
    # Input a value from keyboard
    company_type <- scan("",what ="")
    
    ######################################################################################
    # Part 1; input information
    
    if(company_type == "BA")
    {
      # If "0" in original_list, insert new_list into the orginal one
      if("0" %in% original_list$Bankings)
      {
        # Location of the first "0"
        location <- which(original_list$Bankings == "0")[1]
        original_list$Bankings[location] <- new_list
      }
      
      # If "0" is not in original_list, insert a new line into the orginal one
      else
      {
        
        temp$Bankings <- new_list
        
        original_list <- rbind(original_list, temp)
        
      }
    }
    
    else if(company_type =="R")
    {
      if("0" %in% original_list$Researches)
      {
        # Location of the first "0"
        location <- which(original_list$Researches == "0")[1]
        original_list$Researches[location] <- new_list
      }
      
      else
      {
        temp$Researches <- new_list
        
        original_list <- rbind(original_list, temp)
      }
    }
    
    else if(company_type == "BR")
    {
      if("0" %in% original_list$Brokerages)
      {
        # Location of the first "0"
        location <- which(original_list$Brokerages == "0")[1]
        original_list$Brokerages[location] <- new_list
      }
      
      else
      {
        temp$Brokerages <- new_list
        
        original_list <- rbind(original_list, temp)
      }
    }
    
    else if(company_type == "C")
    {
      if("0" %in% original_list$Consultings)
      {
        # Location of the first "0"
        location <- which(original_list$Consultings == "0")[1]
        original_list$Consultings[location] <- new_list
      }
      
      else      
      {
        temp$Consultings <- new_list
        
        original_list <- rbind(original_list, temp)
      }
    }
    
    else if(company_type == "T")
    {
      if("0" %in% original_list$Technologies)
      {
        # Location of the first "0"
        location <- which(original_list$Technologies == "0")[1]
        original_list$Technologies[location] <- new_list
      }
      
      else      
      {
        temp$Technologies <- new_list
        
        original_list <- rbind(original_list, temp)
      }
      
    }
    
    else
    {
      message("Error: Input error company type, try again please")
      
    }
    
  }
  ##########################################################################################  
  # Part 2: delete item from them matrix
  if(eraser != "0")
  {
    print("Erasing: What kind of company is this one? (1.'BA', 2.'R', 3.'BR', 4.'C', 5.'T')")
    
    type_company <- scan("", what= "")
    if(type_company == "BA")
    {
      
      if(eraser %in% original_list$Bankings)
      {
        location <- which(original_list$Bankings == eraser)
        original_list$Bankings[location] <- 0
      }
      
      else
      {
        message("Error: This company is not in the data")
      }
    }
    
    else if(type_company == "R")
    {
      
      if(eraser %in% original_list$Researches)
      {
        location <- which(original_list$Researches == eraser)
        original_list$Researches[location] <- 0
      }
      
      else
      {
        message("Error: This company is not in the data")
      }
    }
    
    else if(type_company == "BR")
    {
      
      if(eraser %in% original_list$Brokerages)
      {
        location <- which(original_list$Brokerages == eraser)
        original_list$Brokerages[location] <- 0
      }
      
      else
      {
        message("Error: This company is not in the data")
      }
    }
    
    else if(type_company == "C")
    {
      
      if(eraser %in% original_list$Consultings)
      {
        location <- which(original_list$Consultings == eraser)
        original_list$Consultings[location] <- 0
      }
      
      else
      {
        message("Error: This company is not in the data")
      }
    }
    
    else if(type_company == "T")
    {
      
      if(eraser %in% original_list$Technologies)
      {
        location <- which(original_list$Technologies == eraser)
        original_list$Technologies[location] <- 0
      }
      
      else
      {
        message("Error: This company is not in the data")
      }
    }
    
    else
    {
      message("Error: Input error company type, try again please")
    }
    
  }
  
  ##########################################################################################  
  return(original_list)
  
}