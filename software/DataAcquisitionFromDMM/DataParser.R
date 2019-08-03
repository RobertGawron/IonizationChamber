library(latticeExtra)
require(gridExtra)
require(grid)

# set error messages test to english
Sys.setenv(LANG = "en")

#load samples
samples <- read.delim("SampleOutputFile.csv", , sep=",")

# date column should be type of date, not string, so parse it
# sample row: 2018-09-28 11:51:08.340037
samples$Timestamp = as.POSIXct(samples$Timestamp, format="%Y-%m-%d %H:%M:%S.%OS")

# create representation of a picture
png(filename = "results.png", width = 800, height = 900, bg = "white")

# create graphs
plotValueVsTime <- xyplot(Measurement ~ Timestamp, 
                samples, 
                type = "l", 
                grid = TRUE, 
                col.line = "black",
                ylab = "V DC",
                xlim=c(min(samples$Timestamp), max(samples$Timestamp)),
                main = "Change over time")

plotHistogram <- histogram(samples$Measurement, 
                           color = "white", 
                           col = "grey", 
                           xlab = "V DC", 
                           ylab = "percentage", 
                           main = "Histogram")

# show graphs
grid.arrange(plotValueVsTime, plotHistogram, nrow = 2)

# add timestamp
trellis.focus("toplevel")
pictureCreationTimestamp <- as.POSIXlt(Sys.time())
panel.text(0.85, 0.03, pictureCreationTimestamp, cex = 1.2, font = 2)
trellis.unfocus()

