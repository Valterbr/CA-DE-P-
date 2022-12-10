install.packages("cluster")
install.packages("clustvarsel")
install.packages("mclust")
install.packages("wskm")

library(mclust)
library(wskm)
library(clustvarsel)
library(cluster)

path <- "file:///C:/Users/aliss/Google Drive/Week-Class/2022/Data Exploration/syntheticdata.csv"
Dataset <- read.csv(path, sep = ",", dec = ".", row.names = 1)
head(Dataset)

out = clustvarsel(Dataset, G= 1:5)
out
out$subset

Subset1 = Dataset[, out$subset]
mod = Mclust(Subset1, G = 1:5)
summary(mod)
plot(mod, c("classification"))