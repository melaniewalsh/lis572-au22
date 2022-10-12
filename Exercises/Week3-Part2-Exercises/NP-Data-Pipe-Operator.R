# Use pipe operators
# Load data
np_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv ", stringsAsFactors = FALSE)

# View this dataframe by clicking on the spreadsheet icon in the Global Environment

# Install tidyverse
install.packages("tidyverse")

# Load dplyr library
library(dplyr)

# Exercise 1
# Select 2 columns from the data using a DPLYR function
# Save this 2-column dataframe to the variable smaller_df
# Make sure to use the pipe %>% operator!
smaller_df <- Your code here

# Question 1: How have the total number of visits to National Parks changed from 1979 to 2020? Were there more visits in 2020 than 1979? What do you think?

# Exercise 2
# To find out, first filter the dataframe for only values from the year 1979, and then calculate the sum total visits for that year
# Save this to a variable called visits_1979
# You will need to use the pipe %>% operator and multiple dplyr functions! 
visits_1979 <- Your code here

# Exercise 3
# Next, filter the dataframe for only values from the year 2020, and then calculate the sum total visits for that year
# Save to a variable called visits_2020
# You will need to use the pipe %>% operator and multiple dplyr functions! 
visits_2020 <- Your code here

# Exercise 4
# Now subtract visits_1979 from visits_2020
Your code here

# Question 2: How have the total number of National *Parks* changed from 1979 to 2020? Are there more parks or fewer parks in 2020?

# Exercise 5
# First, filter the dataframe for only values from the year 1979, and then calculate the number of distinct parks for that year
# Save to a variable called parks_1979
# You will need to use the pipe %>% operator and multiple dplyr functions! 
parks_1979 <- Your code here

# Exercise 6
# First, filter the dataframe for only values from the year 2020, and then calculate the number of distinct parks for that year
# Save to a variable called parks_2020
# You will need to use the pipe %>% operator and multiple dplyr functions! 
parks_2020 <- Your code here

# Exercise 7
# Now subtract parks_1979 from parks_2020
Your code here
