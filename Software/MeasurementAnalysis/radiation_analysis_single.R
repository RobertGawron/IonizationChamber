# radiation_analysis.R
library(lattice)
library(grid)
library(gridExtra)

plot_radiation_analysis <- function(
  samples,
  file_prefix = "radiation_results",
  save_path = ".",
  width = 800,
  height = 1000,  # Increased height for footer
  bg_color = "white",
  line_color = "black",
  timezone = "UTC",
  time_format = "%Y-%m-%d %H:%M:%S.%OS",
  bin_strategy = "Sturges",
  output_formats = c("png", "svg")  # Output formats parameter
) {

  # Input validation
  required_cols <- c("time", "voltage")
  if (!all(required_cols %in% tolower(names(samples)))) {
    stop("Input data must contain 'time' and 'voltage' columns")
  }
  if (nrow(samples) == 0) stop("Input data is empty")

  # Standardize column names to lowercase
  names(samples) <- tolower(names(samples))

  # Safe time conversion
  if (!inherits(samples$time, "POSIXct")) {
    samples$time <- tryCatch(
      as.POSIXct(samples$time, format = time_format, tz = timezone),
      error = function(e) {
        stop("Time format conversion failed: ", e$message)
      }
    )
  }

  # Create base filename with timestamp
  base_filename <- paste0(
    file_prefix,
    "-",
    format(Sys.time(), "%d_%b_%Y_%H_%M")
  )

  # Calculate axis limits
  time_range <- range(samples$time)
  count_range <- range(samples$voltage)

  # Create plots with zero-based axes
  time_series_plot <- xyplot(
    voltage ~ time,
    data = samples,
    type = "l",
    grid = TRUE,
    col.line = line_color,
    ylab = "Counts per minute",
    main = "Radioactivity Measurements Over Time",
    xlim = c(min(time_range), max(time_range)),
    ylim = c(0, max(count_range) * 1.1)  # 10% padding
  )

  histogram_plot <- histogram(
    ~voltage,
    data = samples,
    type = "percent",
    breaks = bin_strategy,
    col = "grey",
    xlab = "Counts",
    ylab = "Percentage of total",
    main = "Radiation Distribution Histogram",
    xlim = c(0, max(count_range) * 1.1)
  )

  # Prepare footer text
  first_sample <- format(min(samples$time), "%Y-%m-%d %H:%M:%S")
  last_sample <- format(max(samples$time), "%Y-%m-%d %H:%M:%S")
  sample_range <- paste(
    "Samples collected from",
    first_sample,
    "to",
    last_sample
  )
  creation_text <- paste(
    "Generated:",
    format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z")
  )

  # Generate outputs for each requested format
  created_files <- c()

  for (fmt in output_formats) {
    # Create format-specific filename
    file_path <- file.path(
      save_path,
      paste0(base_filename, ".", fmt)
    )

    # Set up device based on format
    if (fmt == "png") {
      png(
        filename = file_path,
        width = width,
        height = height,
        bg = bg_color
      )
    } else if (fmt == "svg") {
      # Convert pixels to inches (72 dpi)
      svg(
        filename = file_path,
        width = width / 72,
        height = height / 72
      )
      # SVG doesn't support bg parameter
      grid.rect(gp = gpar(fill = bg_color, col = bg_color))
    }

    # Arrange and print plots
    grid.arrange(time_series_plot, histogram_plot, nrow = 2)

    # Add sample time range footer
    grid.text(
      label = sample_range,
      x = 0.5,
      y = 0.015,
      just = "center",
      gp = gpar(
        fontsize = 10,
        col = "gray30",
        fontface = "italic"
      )
    )

    # Add creation timestamp
    grid.text(
      label = creation_text,
      x = 0.99,
      y = 0.035,
      just = c("right", "bottom"),
      gp = gpar(fontsize = 9, col = "gray40")
    )

    # Close device
    dev.off()
    created_files <- c(created_files, file_path)
  }

  return(created_files)
}

# --- Main script execution ---
# Set error messages to English (temporary scope)
old_lang <- Sys.getenv("LANG")
Sys.setenv(LANG = "en")
on.exit(Sys.setenv(LANG = old_lang), add = TRUE)

# Data loading with validation
input_file <- "data.csv"

# Check if file exists before reading
if (!file.exists(input_file)) {
  stop("Data file not found: ", input_file)
}

# Read data with proper CSV handling
samples_data <- tryCatch(
  {
    df <- read.csv(input_file, stringsAsFactors = FALSE)

    # Basic data validation
    if (ncol(df) < 2) {
      stop("Insufficient columns in data (need at least 2)")
    }
    if (nrow(df) == 0) stop("Empty dataset")
    df
  },
  error = function(e) {
    stop("Error reading ", input_file, ": ", e$message)
  }
)

# Ensure proper column names (case-insensitive)
colnames(samples_data) <- tolower(colnames(samples_data))

# Generate analysis plots in multiple formats
output_files <- plot_radiation_analysis(
  samples_data,
  output_formats = c("png", "svg")
)

# Success message
message("Radiation analysis plots successfully generated:")
message(paste("- ", output_files, collapse = "\n"))
