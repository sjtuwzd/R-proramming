pollutantmean <- function(directory, pollutant, id = 1:332){
  total <- 0
  a<-0
  num<-0
  
  
  
  setwd(directory)
  if(pollutant=="sulfate"){
    for(i in id){
      
      file_name<-list.files()
      data <- read.csv(file_name[i])
      bad.d<-is.na(data$sulfate)
      temp <- data[!bad.d,"sulfate"]
      num <- num + length(temp)
      a <-total
      total <- sum(temp) + a
    }
  }
  else{
    
    for(i in id){

      file_name<-list.files()
      data <- read.csv(file_name[i])
      bad.d<-is.na(data$nitrate)
      temp<-data[!bad.d,"nitrate"]
      num <- num + length(temp)
      a <-total
      total <- sum(temp) + a
    }
  
  }
  mean_value <- total / num
  setwd("~/testdir")
  return(mean_value)
  
}