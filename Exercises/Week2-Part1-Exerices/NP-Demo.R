# Load NP data
np_data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/2020-National-Park-Visits-By-State-Top5.csv")

# Turn off scientific notation for plots
options(scipen=999)

# Plot National Parks by total visits
barplot(np_data$RecreationVisits, 
        # Title
        main="National Park Visits 2020",
        # Bar labels
        names.arg=np_data$ParkName,
        # Color
        col=c("darkblue"),
        # Labels
        las = 0)

# Print a message to the Console
print("Woohoo I ran my first script!")

