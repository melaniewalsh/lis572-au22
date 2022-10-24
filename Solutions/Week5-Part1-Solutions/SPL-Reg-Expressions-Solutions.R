# SPL Data + Regular Expressions in Action

# SPL Publication Dates
# 2005 —publication date
# c. 2005 – copyright symbol
# [2005] – Printing date
# p. 2005 – phonogram copyright symbol
# 2004, c. 2005 – publication and copyright date
# 2005-2007 – intervening years
# [2005?] – Approximate date

# Load SPL data
spl_data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv", stringsAsFactors = FALSE)

# Load dplyr and stringr
library("stringr")
library("dplyr")

# Test out str_extract()
sample_years <- c("[2005]", "c.2010")
str_extract(sample_years, "\\d{4}")


# Exercise 1: Add a new column to the SPL dataframe called "clean_year"
# that includes any 4-digit year from the "PublicationYear" column

spl_data <- spl_data %>% 
  mutate(clean_year = mutate(str_extract(PublicationYear, "\\d{4}")))

# Exercise 2: Add a new column to the SPL dataframe called "clean_pub_year"
# but only include *true* publication years from the "PublicationYear" column

get_true_pub <- function(year) {
  case_when(
    !str_detect(year, "\\]",) & 
      !str_detect(year, "\\?") &
      !str_detect(year, "-") ~ str_extract(year, "\\d{4}")
  )
}

spl_data <- spl_data %>% 
  mutate(clean_pub_year = get_true_pub(PublicationYear))


# Bonus exercise: Create a new column that indicates whether a title
# was published by one of the big 5 publishers

get_big_5 <- function(publisher) {
  case_when(
    str_detect(publisher, "Schuster")  ~ "Simon and Schuster",
    str_detect(publisher, "Penguin|Random")  ~ "Penguin Random House"
  )
}

spl_data <- spl_data %>% mutate(big_5 = get_big_5(Publisher))

