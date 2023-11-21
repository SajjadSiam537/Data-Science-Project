
library(cluster)
library(factoextra)

Info<- read.csv("D:/C_Dataset_Final.csv",header = TRUE,sep=",")
Info



remove<-na.omit(Info)


info2 <- Info[-1]


scaled_data <- scale(info2)


k <- 3
kmeans_result<- kmeans(scaled_data,k)


kmeans_result$cluster


kmeans_result$centers


fviz_cluster(kmeans_result,data=scaled_data)

