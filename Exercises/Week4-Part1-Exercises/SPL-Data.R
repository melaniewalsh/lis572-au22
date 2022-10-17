# SPL Data — Queering the Catalog

#Load the stringr library
# install.packages("stringr")
library("stringr")

# Load the Seattle Public Library Data
# https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv
spl_data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv", stringsAsFactors = FALSE)

# Load the dplyr library
# Load the tidyverse library
library(dplyr)
library(tidyverse)

# Exercise 1: Filter for all of the Lord of the Rings books and save to a variable filtered titles 
filtered_titles <- spl_data %>% filter(str_detect(Title, "Lord of the Rings"))

# Now search for a title that you are interested in!

##### Subject Headings

# How has the Seattle Public Library handled changes in LOC Subject Headings?

# Exercise 2: Filter for all books that include a certain term (e.g. "aliens") in the Subject Heading
term1_subjects <- Your Code Here

# Exercise 3: Filter for all books that include (e.g. "noncitizens") in the Subject Heading
term2_subjects <- Your Code Here

# Let's compare the books that have term 1-related Subject Headings and the books that have term 2-related Subject Headings

# Exercise 4: Group the term1_subejcts and term2_subjects by subject heading OR by year, and then use the function n() to count how frequent each heading is OR how many headings appeared each year

term1_subjects_df <- Your Code Here

term2_subjects_df <- Your Code Here

# What additional work might we need to do to analyze Subject Headings?

# Bonus: You can use a tidyverse function separate_rows() to split a column with multiple items into individual rows with each item. Check it out! 
spl_data_subjects <- spl_data %>% separate_rows(Subjects, sep = ",")