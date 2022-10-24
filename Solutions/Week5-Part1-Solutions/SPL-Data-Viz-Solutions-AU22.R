# SPL Data Viz

# Load the data
spl_df <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv", stringsAsFactors = FALSE)

# Exercise 1: Calculate the total number of SPL checkouts per year
# Save as checkouts_per_year
checkouts_per_year <- spl_df %>% 
  group_by(CheckoutYear) %>% 
  summarize(total_checkouts = sum(Checkouts, na.rm = TRUE))

# Plot with default R function
plot(checkouts_per_year, type = 'b')

# Load ggplot2 library
# install.packages("ggplot2")
library("ggplot2")

# Exercise 2: Plot "checkouts_per_year" with ggplot
# Make a purple line plot of checkouts
ggplot(data = checkouts_per_year) +
  geom_point(aes(x = CheckoutYear,
                 y = total_checkouts),
             color = "purple")  +
  geom_line(aes(x = CheckoutYear,
                y = total_checkouts),
            color = "purple")


# Exercise 3: Calculate the total number of SPL checkouts per year per "material type"
# Hint: you'll need to group by multiple columns!
# Save as checkouts_per_year_type
checkouts_per_year_type <- spl_df %>% 
  group_by(CheckoutYear, MaterialType) %>% 
  summarize(total_checkouts = sum(Checkouts, na.rm = TRUE))

# Filter for only specific values
checkouts_per_year_type <- checkouts_per_year_type %>% filter(MaterialType %in% c("AUDIOBOOK", "BOOK", "EBOOK"))

# Exercise 4: Plot checkouts_per_year_type as a scatter plot with ggplot and make the color correspond to the material type
ggplot(data = checkouts_per_year_type) +
  geom_line(aes(x = CheckoutYear,
                 y = total_checkouts,
             color = MaterialType))


