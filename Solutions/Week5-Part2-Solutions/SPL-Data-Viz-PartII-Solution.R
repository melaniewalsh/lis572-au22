# SPL Data Viz — Part II Solution
# Load the data
spl_df <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Checkouts_by_Title_2018-2022_15-checkouts.csv", stringsAsFactors = FALSE)

# Calculate the total number of SPL checkouts per year per "material type"
# Save as checkouts_per_year_type
checkouts_per_year_type <- spl_df %>% 
  group_by(MaterialType) %>% 
  summarize(total_checkouts = sum(Checkouts, na.rm = TRUE)) %>%
  slice_max(n= 5, order_by = total_checkouts)

checkouts_per_type <- spl_df %>% 
  group_by(MaterialType) %>% 
  summarize(total_checkouts = sum(Checkouts, na.rm = TRUE)) %>%
  slice_max(n= 5, order_by = total_checkouts)


#### Adding custom colors
custom_colors <- c("#771C19", "#AA3929", "#E25033", "#F27314", "#F8A31B")
ggplot(data = checkouts_per_type) +
  geom_col(mapping = aes(
    x = MaterialType,
    y= total_checkouts,
    fill = MaterialType)
  ) +  scale_fill_manual(values = custom_colors)

### Adding interactivity
bar_plot <- ggplot(data = checkouts_per_type) +
  geom_col(mapping = aes(
    x = MaterialType,
    y= total_checkouts,
    fill = MaterialType)
  ) 
ggplotly(bar_plot)

### Adding custom tooltip
bar_plot <- ggplot(data = checkouts_per_type) +
  geom_col(mapping = aes(
    x = MaterialType,
    y= total_checkouts,
    fill = MaterialType,
    text = paste("Medium:", MaterialType))
  ) 
ggplotly(bar_plot, tooltip = "text")


# Filter the checkouts_per_year_type dataframe for only audiobooks, books, and ebooks
# Hint: you may want to use the %in% operator!
# Save as checkouts_per_year_top_types
checkouts_per_year_top_types <- checkouts_per_year_type %>% filter(MaterialType %in% c("AUDIOBOOK", "BOOK", "EBOOK"))

# Turn off scientific notation for y axis
options(scipen=999)

# Plot checkouts_per_year_top_types as a line plot with ggplot and color by material type
ggplot(data = checkouts_per_year_type) +
  geom_line(aes(x = CheckoutYear,
                y = total_checkouts,
                color = MaterialType))

# Add a title, subtitle, and custom x,y axis labels to this plot
# Add a caption that explains the most salient pattern(s) in the plot
ggplot(data = checkouts_per_year_type) +
  geom_line(aes(x = CheckoutYear,
                y = total_checkouts,
                color = MaterialType)) +
  labs(title = "Total Seattle Public Library Checkouts by Material Type",
       caption = "Book checkouts plummeted in 2020",
       x = "Total Checkouts",
       y = "Checkout Year",
       color = "Material Type")

# Change the color scheme of this plot
# Choose one of the color schemes featured in the website below:
# https://r-graph-gallery.com/38-rcolorbrewers-palettes.html
ggplot(data = checkouts_per_year_type) +
  geom_line(aes(x = CheckoutYear,
                y = total_checkouts,
                color = MaterialType)) +
  labs(title = "Total Seattle Public Library Checkouts by Material Type",
       caption = "Book checkouts plummeted in 2020",
       x = "Checkout Year",
       y = "Total Checkouts ",
       color = "Material Type") +
  scale_color_brewer(palette = "Set3")


# Find the total number of SPL checkouts per year for an author or title of your choice, then visualize it as a line plot over time with custom labeling
library(stringr)
author_checkouts <- spl_df %>% filter(str_detect(Creator, "James Baldwin|Baldwin, James")) %>% 
  group_by(CheckoutYear) %>% 
  summarize(total_checkouts = sum(Checkouts, na.rm = TRUE))

ggplot(data = author_checkouts) +
  geom_line(aes(x = CheckoutYear,
                y = total_checkouts)) +
  labs(title = "James Baldwin Seattle Public Library Checkouts by Material Type",
       caption = "Book checkouts peaked in 2020",
       x = "Checkout Year",
       y = "Total Checkouts ",
       color = "Material Type") +
  scale_color_brewer(palette = "Set3")
