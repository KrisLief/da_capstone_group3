
df <- df <- read.csv('/Users/kk/Desktop/etf_addendum/Final ETF Table/df_etf_dummmies.csv')
library(tidyverse)

glimpse(df)


# Load the stats package (if not already loaded)
library(stats)

# Install and load the zoo package (if not already installed)
install.packages("zoo")
library(zoo)

# Step 1: Handle Missing Values using na.aggregate
numeric_cols_imputed <- na.aggregate(numeric_cols)

# Step 2: Perform PCA on the imputed data
pca_result <- prcomp(numeric_cols_imputed, scale = TRUE)

# Plot the scree plot
plot(pca_result)

# Add axis labels
axis(1, at = 1:length(pca_result$sdev), labels = paste("PC", 1:length(pca_result$sdev)))
axis(2, las = 1)

#--------------


# Perform PCA after handling missing values
pca_result <- prcomp(numeric_cols, scale = TRUE)

# Extract the scores of the first two principal components
pca_scores <- pca_result$x[, 1:2]

# Plot the data points in a scatter plot using the first two principal components
plot(pca_scores, pch = 21, col = "darkgrey", xlab = "PC1", ylab = "PC2", main = "Graphical Clustering with PCA")

# Assuming you have already performed PCA and obtained the PCA scores in 'pca_scores' variable
# Assuming you have already performed PCA and obtained the PCA scores in 'pca_scores' variable

# Specify the number of clusters (adjust this based on your requirement)
num_clusters <- 4

# Perform k-means clustering on the PCA scores
kmeans_result <- kmeans(pca_scores, centers = num_clusters)

# Add cluster assignments to the PCA scores data frame
pca_scores_with_clusters <- data.frame(pca_scores, Cluster = as.factor(kmeans_result$cluster))

# Plot the data points with cluster assignments
plot(pca_scores_with_clusters[, 1:2], pch = 16, col = pca_scores_with_clusters$Cluster, 
	 xlab = "PC1", ylab = "PC2", main = "K-means Clustering on PCA Data")
legend("topright", #legend = levels(pca_scores_with_clusters$Cluster), 
	   ,col = 1:num_clusters, pch = 16, title = "Cluster")


#-------------------
# k-means for 3 cluster
num_clusters <- 3

# Perform k-means clustering on the PCA scores
kmeans_result <- kmeans(pca_scores, centers = num_clusters)

# Add cluster assignments to the PCA scores data frame
pca_scores_with_clusters <- data.frame(pca_scores, Cluster = as.factor(kmeans_result$cluster))

# Plot the data points with cluster assignments
plot(pca_scores_with_clusters[, 1:2], pch = 16, col = pca_scores_with_clusters$Cluster, 
	 xlab = "PC1", ylab = "PC2", main = "K-means Clustering on PCA Data")
legend("topright", #legend = levels(pca_scores_with_clusters$Cluster), 
	   ,col = 1:num_clusters, pch = 16, title = "Cluster")


#-------------------

#HDBSCAN 
install.packages("dbscan")

library(dbscan)

# Extract the PCA scores (principal components) from the PCA result
pca_scores <- as.data.frame(pca_result$x)

# Perform DBSCAN clustering
# Epsilon (eps) and minPts are parameters that need to be chosen based on your data
# Adjust these values to suit your dataset and clustering requirements
epsilon <- 0.5  # Adjust this value
minPts <- 5     # Adjust this value

cluster_result <- dbscan(pca_scores, eps = epsilon, MinPts = minPts)

# Access the cluster labels
cluster_labels <- cluster_result$cluster


#-----------------------------



# Load the required libraries
library(rgl)
library(scatterplot3d)


pca_result <- prcomp(numeric_cols, scale = TRUE)
pca_scores <- as.data.frame(pca_result$x) # Convert the PCA scores matrix to a data frame

# Load the rgl library (if not already loaded)
library(rgl)

# Check the structure of the 'pca_scores' variable
str(pca_scores)

# Create a 3D scatter plot with PC1, PC2, and PC3
plot3d(pca_scores[, 1:3], col = "darkgrey", size = 2, pch3d('s') xlab = "PC1", ylab = "PC2", zlab = "PC3",
	   main = "3D Scatter Plot of PCA Data")

#_________________________

# Perform k-means clustering on the first three PCA components (PC1, PC2, and PC3) k=4
kmeans_result <- kmeans(pca_scores[, 1:3], centers = 3)

# Get the cluster centers from the kmeans result
cluster_centers <- as.data.frame(kmeans_result$centers)

# Load the rgl library (if not already loaded)
library(rgl)

# Create a 3D scatter plot with PC1, PC2, and PC3
plot3d(pca_scores[, 1:3], col = kmeans_result$cluster, size = 4, 
	   xlab = "PC1", ylab = "PC2", zlab = "PC3",
	   main = "K-means Clustering on PCA Data")




# Add cluster centers to the 3D plot
with(cluster_centers, points3d(x = PC1, y = PC2, z = PC3, col = "black", size = 1))





