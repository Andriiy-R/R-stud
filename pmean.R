pmean<-function(directory,pollutant,id=1:332)

{
  setwd("D:/Education/5.2/R/Laba 5")
  sum_pollutant=0
  count_pollutant=0
  for (i in id)
    {
    fl=paste0(setwd,'/',id,'.csv')
    df<-read.csv(file=fl)
    sum_pollutant=sum_pollutant+colSums(df[pollutant],na.rm = TRUE)
    count_pollutant=count_pollutant+colSums(df[pollutant],na.rm = TRUE)/colMeans(df[pollutant],na.rm = TRUE)
    }
  return(sum_pollutant/count_pollutant)
}

pmean("specdata","sulfate",1:10)




complete<-function(directory,id){
  setwd("R/Laba 5/")
  nobs<-c()
  j=1
  for (i in id){
    fl=paste0(directory,'/',i,'.csv')
    df<-read.csv(file=fl)
    sum_pollutant=0
    sum_pollutant=colSums(df[2],na.rm = TRUE)
    nobs[j]=colSums(df[2],na.rm = TRUE)/colMeans(df[2],na.rm = TRUE)
    j=j+1
  }
  return(data.frame(id,nobs))
}

file.exists("R/Laba 5/specdata/001.csv")


corr = function(directory, threshold = 0) {
  setwd("D:/Education/5.2/R/Laba 5/specdata")
  corelations = numeric()
  for (i in 1:332){
    fl=paste0(directory,'/',i,'.csv')
    df<-na.omit(read.csv(file=fl))
    if (nrow(df) > threshold){
      corelations = c(corelations,cor(df['sulfate'], df['nitrate']))
    }
  }
  return(corelations)
}

pmean("specdata","sulfate",1:10)
file.exists("file_path/file_name")