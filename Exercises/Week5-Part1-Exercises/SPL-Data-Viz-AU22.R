# SPL Data Viz

# Load the data
spl_df <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv", stringsAsFactors = FALSE)

# Exercise 1: Calculate the total number of SPL checkouts per year
# Save as checkouts_per_year
Your code here

# Plot with default R function
plot(checkouts_per_year, type = 'b')

# Load ggplot2 library
# install.packages("ggplot2")
library("ggplot2")

# Exercise 2: Plot "checkouts_per_year" with ggplot
# Make a purple line plot of checkouts
Your code here


# Exercise 3: Calculate the total number of SPL checkouts per year per "material type"
# Hint: you'll need to group by multiple columns!
# Save as checkouts_per_year_type
Your code here

# Filter for only specific values
checkouts_per_year_type <- checkouts_per_year_type %>% filter(MaterialType %in% c("AUDIOBOOK", "BOOK", "EBOOK"))

# Exercise 4: Plot checkouts_per_year_type as a scatter plot with ggplot and make the color correspond to the material type
Your code here


