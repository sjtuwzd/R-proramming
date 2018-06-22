complete<- function(directory, id=1:332){
  
  
  result<-c()
  setwd(directory)
  for(i in id){
    file_name <- list.files()
    data <- read.csv(file_name[i])
    data<-subset(data, sulfate>=0 & nitrate >=0)
    row_num <- dim(data)[1]
    temp <- c(i, row_num)
    result<-rbind(result, temp)
  }
  
  
  result<-as.data.frame(result)
  names(result)<-c("id", "noob")
  setwd("~/testdir")
  return(result)
}