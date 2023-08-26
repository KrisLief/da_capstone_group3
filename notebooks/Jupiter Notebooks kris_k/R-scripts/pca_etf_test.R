

# Load necessary libraries
library(dplyr)
library(stats)
library(mice)

df <- read.csv(('/Users/kk/Desktop/etf_addendum/FINAL ETF TABLE/df_merged_etf_fixed_2.csv'))
# Load necessary libraries


library(DMwR2)

head(df)
glimpse(df)


df <- df[ drop <- c(X,segment, analyst_pick, asset_class, fundname, as_of_date)]
head(df_1)

knitr::kable(fastDummies_example)

# Assuming 'df_numeric' is your original data frame with missing values
# Drop non-numeric columns that are not needed for PCA
df_numeric <- df %>%
	select_if(is.numeric)

# Impute missing values using KNN imputation
imputed_data <- knnImputation(df_numeric)

# Perform PCA on the completed dataset using 'prcomp'
pca_result <- prcomp(imputed_data, center = TRUE, scale. = TRUE)

# Get the principal components
pcs <- pca_result$x

# Access the loadings (correlation between original variables and principal components)
loadings <- pca_result$rotation

# You can also access the standard deviations of the principal components
pcs_sd <- pca_result$sdev

# Create a new data frame containing the PCA results
df_pca <- as.data.frame(pcs)

# Add 'grade' column from the original data frame to 'df_pca'
df_pca$grade <- df$grade

# Visualize the data in the first two principal components with a biplot using color groups
biplot(pca_result, scale = 0, col = as.numeric(df_pca$grade), cex = 0.6)

# Save the PCA results to the 'df_pca' data frame
df_pca$grade <- df$grade # Add 'grade' column from the original data frame to 'df_pca'

# Optionally, you can add the original non-numeric columns back to the PCA results data frame
# df_pca <- cbind(df[, !names(df) %in% names(df_numeric)], df_pca)

# You can also add the asset names back to the PCA results if needed
# df_pca$asset_names <- df$asset_names

# df_pca now contains the PCA results with the 'grade' column aligned correctly, and you can further analyze or visualize them as needed.


#-------------------


glimpse(pca)

