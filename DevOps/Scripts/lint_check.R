library(lintr)

args <- commandArgs(trailingOnly = TRUE)

if (length(args) < 2) {
  cat("Usage: Rscript lint_check.R <input_folder> <output_folder>\n")
  quit(status = 2) # Exit with code 2 for bad usage
}

input_folder <- args[[1]]
output_folder <- args[[2]]
output_file <- file.path(output_folder, "lints.txt")

# Create output folder if needed
if (!dir.exists(output_folder)) {
  dir.create(output_folder, recursive = TRUE)
}

# Run the linter on the input directory
lints <- lint_dir(input_folder)

if (length(lints) > 0) {
  print(lints)  # Print to console
  cat(
    as.character(lints),
    sep = "\n",
    file = output_file
  )
  quit(status = 1)  # Non-zero exit if lints found
} else {
  cat("No lints found.\n")
  cat("", file = output_file)  # Create/empty the output file
  quit(status = 0)
}
