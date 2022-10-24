# SPL Data Part II

# Load the Seattle Public Library Data
# https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv
spl_data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv", stringsAsFactors = FALSE)

# Load the dplyr library
# Load the stringr library
library("dplyr")
library("stringr")

########### Publishers
# Exercise 1
# What are all the distinct publishers in the SPL data — e.g., Random House, Scholastic, etc.? 
# Save as a variable distinct_publishers
Your code here

############ Creators
# Exercise 2
# Filter the dataframe for a specific author/creator but try to capture different existing representations of their name
# Save as creator_df
Your code here


############ Publication Years
# Exercise 3
# What are the most common publication dates for items in the 2018-2022 SPL data?

# To answer this question, you need to make a dataframe that shows how many times each publication date appears

# Save your new dataframe as a variable called publication_years
Your code here


# What do you notice about the publication year data? What steps should we take next? Should we clean these values?

############ Most Checked Out Items

# What are the most checked out items in this SPL data?
# To answer this question, you need to make a dataframe that shows how many times each individual item has been checked out
# Save your new dataframe as a variable called most_checked_out
Your code here

