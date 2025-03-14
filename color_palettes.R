# Load required libraries
library(ggplot2)
library(gridExtra)

# Function to create a color palette plot
create_palette_plot <- function(colors, title) {
	df <- data.frame(
		Color = factor(colors, levels = colors),
		Value = rep(1, length(colors))
	)
	
	ggplot(df, aes(x = Color, y = Value, fill = Color)) +
		geom_bar(stat = "identity") +
		scale_fill_manual(values = colors) +
		theme_void() +
		theme(legend.position = "none") +
		ggtitle(title) +
		theme(plot.title = element_text(hjust = 0.5, size = 14, face = "bold"))
}

#5E9BD9

# Define color palettes
palette1 <- c("#161F36","#5E9BD9",  "#BACBD8","#F2EDE2", "#F8F9FA") # Soothing & Trustworthy


# Create plots
plot1 <- create_palette_plot(palette1, "Soothing & Trustworthy")


# Arrange plots in a grid
grid.arrange(plot1, plot2, plot3, plot4, plot5, plot6, ncol = 2)
