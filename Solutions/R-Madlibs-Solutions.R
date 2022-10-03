# Let's play a game of Madlibs!

# Talk to your partners and ask them about their hometown, favorite food, age, and whether they like rain

# Assign the appropriate values to each of the following variable names, and use the data type listed in the comment. Make sure to run each line to save the variable in your Global Environment
hometown <- "Seattle"              #character
food  <- "curry"                 #character
age   <- 21                  #numeric
likes_rain  <- FALSE           #logical
# Calculate someone's likely birth year only by using the age variable and a basic math operation
birth_year  <- 2022 - age           #numeric


# Use a built-in R function to mash together each character string and variable, and print the message to the console


paste("My partner's hometown is", hometown)
      
paste("My partner's favorite food is", food)
            
paste("My partner was probably born in", birth_year)
paste("The statement 'my partner likes rain' is", likes_rain
)


# Use a built-in R function to print the data type of each variable to the console
typeof(hometown)
typeof(food)
typeof(age)
typeof(likes_rain)
