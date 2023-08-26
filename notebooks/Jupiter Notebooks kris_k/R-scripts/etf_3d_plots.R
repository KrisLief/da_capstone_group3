# install rgl and scatterplot3d and load to library
require(scatterplot3d)
require(rgl)
require(tidyverse)

# Assuming you have loaded the necessary libraries (tibble, dplyr, stringr)
df<- read.csv('/Users/kk/Desktop/etf_addendum/Final ETF Table/df_merged_etf_fixed_2.csv')


df_1 = na.omit(df)
# 1. Create df_1 tibble
df_1 <- tibble(
	dividend_yield = df$dividend_yield,
	quality_score = df$quality_score,
	carbon_intensity = df$carbon_intensity,
	esg_rating = df$esg_rating
)

# 2. Use mutate and case_when to update the esg_rating column
df_1 <- df_1 %>%
	mutate(
		esg_rating = case_when(
			esg_rating == 'AAA' ~ 'seagreen3',
			esg_rating == 'AA' ~ 'lightgreen',
			esg_rating == 'A' ~ 'yellowgreen',
			esg_rating == 'BBB' ~ 'yellow2',
			esg_rating == 'BB' ~ 'darkorange',
			esg_rating == 'B' ~ 'hotpink',
			esg_rating == 'CCC' ~ 'deeppink',
			esg_rating == 'CC' ~ 'magenta',
			esg_rating == 'C' ~ 'purple',
			#TRUE 'lightgrey' # Replace NA values with "col"
		)
	)

# 3. Print the head of df_1
glimpse(df_1)
summary(df_1)

# same plot but interactive
plot3d(df_1[1:3168, 1:3])
with(df_1, plot3d(df_1[1:3168, 1:3], type = "s",size = .75 ,col= as.factor(df_1$esg_rating)))



#-------------
glimpse(df)

df_2 = na.omit(df)
# 1. Create df_1 tibble
df_2 <- tibble(
	dividend_yield = df_2$dividend_yield,
	ytd_performance = df_2$ytd_p_percent ,
	fife_yr_performance_intensity = df$five_yr_p_percent,
	expanse_rate = df_2$expense_ratio,
	esg_rating = df_2$esg_rating
)

# 2. Use mutate and case_when to update the esg_rating column
df_2 <- df_2 %>%
	mutate(
		esg_rating = case_when(
			esg_rating == 'AAA' ~ 'darkgreen',
			esg_rating == 'AA' ~ 'seagreen3',
			esg_rating == 'A' ~ 'lightgreen',
			esg_rating == 'BBB' ~ 'yellowgreen',
			esg_rating == 'BB' ~ 'yellow2',
			esg_rating == 'B' ~ 'darkorange',
			esg_rating == 'CCC' ~ 'hotpink',
			esg_rating == 'CC' ~ 'deeppink',
			esg_rating == 'C' ~ 'purple',
			TRUE ~ 'black' # Replace NA values with "black"
		)
	)

# 3. Print the head of df_1
glimpse(df_2)
summary(df_2)

# same plot but interactive
plot3d(df_2[1:3168, 1:3])
with(df_2, plot3d(df_1[1:3168, 1:3], type = "s",size = .5 ,col= as.factor(df_2$esg_rating), alpha=.5))

#-------------

df_2 = drop_na(df)
# 1. Create df_1 tibble
df_2 <- tibble(
	dividend_yield = df$dividend_yield,
	quality_score = df$quality_score,
	carbon_intensity = df$carbon_intensity,
	esg_rating = df$esg_rating
)

# 2. Use mutate and case_when to update the esg_rating column
df_2 <- df_2 %>%
	mutate(
		esg_rating = case_when(
			esg_rating == 'AAA' ~ 'darkgreen',
			esg_rating == 'AA' ~ 'seagreen3',
			esg_rating == 'A' ~ 'lightgreen',
			esg_rating == 'BBB' ~ 'yellowgreen',
			esg_rating == 'BB' ~ 'yellow2',
			esg_rating == 'B' ~ 'darkorange',
			esg_rating == 'CCC' ~ 'hotpink',
			esg_rating == 'CC' ~ 'deeppink',
			esg_rating == 'C' ~ 'purple',
		#	TRUE ~ 'black' # Replace NA values with "black"
		)
	)

# 3. Print the head of df_1
glimpse(df_2)
summary(df_2)

# same plot but interactive
plot3d(df_2[1:3168, 1:3])
with(df_2, plot3d(df_2[1:3168, 1:3], type = "s",size = .75 ,col= as.factor(df_2$esg_rating), alpha=.5))

#-------------

