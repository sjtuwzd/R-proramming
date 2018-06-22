corr<-function(directory, threshold = 0){
  
  
  complete_case_data <- complete("specdata", 1:332)$noob
  setwd(directory)
  file_name <- list.files()
  result <- c()
  a<-1:332
  for(i in a){
    if(complete_case_data[i] > threshold){
      data <- read.csv(file_name[i])
      data<-subset(data, sulfate>=0 &nitrate>=0)  
      temp <- cor(data["sulfate"], data["nitrate"])
      result <- rbind(result, temp)
      
      
    }
  }
  setwd("~/testdir")
  return(result)
}