## Books in Translation

# Load libraries
library(dplyr)
library(ggplot2)
#install.packages(plotly)
library(plotly)

## Exercise 1: Load the Publisher's Weekly Translation dataset from the URL below and save it to a variable called `pw_df`
# https://github.com/melaniewalsh/Neat-Datasets/blob/main/PW-Translation.csv?raw=true
# Hint: This CSV file is separated by tabs, not commas
# You might need to read the documentation for read.csv() or google this question

pw_df <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/blob/main/PW-Translation.csv?raw=true", sep = "\t", stringsAsFactors = FALSE)

Your code here

## Take a moment to view and inspect the data
## Try to find a book that you are familiar with


## Exercise 2: How many books from each country had works translated into English since 2008?
# Make a dataframe with the total number of books published from each country
# Save as books_per_country
books_per_country <- pw_df %>% 
  group_by(country) %>% 
  summarize(total_books = n())

## Exercise 3: 
## Slice the dataframe books_per_country for only the top 10 countries with the most books
# Save as top_10_countries
top_10_countries <- books_per_country %>% 
  slice_max(n=10, order = total_books)


## Exercise 4: Make an *interactive* bar plot of the 10 countries translated into English 
# Bonus: customize the interactive tooltip in some way
ggplotly(ggplot(top_10_countries) + 
  geom_col(aes(x = reorder(country, -total_books),
               y = total_books),
           fill = "blue"))


