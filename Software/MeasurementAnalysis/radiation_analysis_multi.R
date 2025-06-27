input_file_name <- "DataNoSample.csv"
file_no_sample <- read.delim(input_file_name, sep = ",")

input_file_name <- "DataSample1.csv"
file_am_sample1 <- read.delim(input_file_name, sep = ",")

input_file_name <- "DataSample2.csv"
file_am_sample2 <- read.delim(input_file_name, sep = ",")

background_level <- file_no_sample$Counter
am_isotope <- file_am_sample1$Counter
ra_isotope <- file_am_sample2$Counter

# Create filename with timestamp
png_filename <- paste0(
  "results-",
  format(Sys.time(), "%d_%b_%Y_%H_%M"),
  ".png"
)

# Open PNG device with proper line breaks
png(
  filename = png_filename,
  width = 800,
  height = 900,
  bg = "white"
)

vertical_labels <- c(
  "background level\nradiation",
  "Am isotope\n(smoke detector)",
  "Ra isotope\n(old compass)"
)

boxplot(
  background_level,
  am_isotope,
  ra_isotope,
  col = "grey",
  names = vertical_labels,
  horizontal = FALSE,
  main = paste(
    "Radioactivity of different samples",
    "measured using Ionization Chamber"
  ),
  xlab = "Measurement",
  ylab = "Sensor voltage",
  boxwex = 0.2
)

# Add Y-grid only
grid(NA, NULL)

# Add boxplot overlay with proper line breaks
boxplot(
  background_level,
  am_isotope,
  ra_isotope,
  col = "grey",
  names = vertical_labels,
  horizontal = FALSE,
  main = paste(
    "Radioactivity of different samples",
    "measured using Ionization Chamber"
  ),
  xlab = "Measurement",
  ylab = "Sensor voltage",
  boxwex = 0.2,
  add = TRUE
)

# Close the device
dev.off()
