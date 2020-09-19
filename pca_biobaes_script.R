# title: "PCA_BioBaes"
# author: "Maruf Ahmed Bhuiyan"
# date: "9/19/2020"

  
data("iris")
head(iris)
View(iris)

pca_iris <- prcomp(iris[,1:4], scale = T, center = T)

names(pca_iris)
summary(pca_iris)

plot(pca_iris, type = 'l')
biplot(pca_iris)

# library(devtools)
# install_github("vqv/ggbiplot")
library(ggbiplot)

ggbiplot(pca_iris, ellipse = T, groups = iris$Species)

# install.packages("factoextra")
library(factoextra)

fviz_screeplot(pca_iris)
fviz_pca_biplot(pca_iris, habillage=iris$Species, addEllipses = TRUE)

dim(volcano)
View(volcano)

pca_vol <- prcomp(volcano, scale = TRUE)

summary(pca_vol)

fviz_screeplot(pca_vol)

fviz_pca_biplot(pca_vol)

