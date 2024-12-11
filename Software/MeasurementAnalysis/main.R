source("drawDiagramSingle.R")

# set error messages test to english
Sys.setenv(LANG = "en")

#load samples
inputFileName ="data.csv" 
samples <- read.delim(inputFileName, , sep=",")

drawDiagramSingle(samples)

# TODO move to a separate module
#library(Hmisc)
#rcorr(samples$Counter,samples$DMM, type="pearson")

