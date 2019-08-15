source("drawDiagramSingle.R")

# set error messages test to english
Sys.setenv(LANG = "en")

#load samples
inputFileName ="data.log" 
samples <- read.delim(inputFileName, , sep=",")

drawDiagramSingle(samples)

