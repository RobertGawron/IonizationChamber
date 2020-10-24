inputFileName ="DataNoSample.csv" 
fileNoSample <- read.delim(inputFileName, , sep=",")

inputFileName ="DataSample1.csv" 
fileAmSample1 <- read.delim(inputFileName, , sep=",")

inputFileName ="DataSample2.csv" 
fileAmSample2 <- read.delim(inputFileName, , sep=",")


backgroundLevel = fileNoSample$Counter 
AmIsotope = fileAmSample1$Counter
RaIsotope = fileAmSample2$Counter


# date column should be type of date, not string, so parse it
png(filename = paste0("results-", format(Sys.time(), "%d_%b_%Y_%H_%M"), ".png"), width = 800, height = 900, bg = "white")



verticalLabels <- c("background level\nradiation", "Am isotope\n(smoke detector)", "Ra isotope\n(old compass)")

boxplot(backgroundLevel, AmIsotope, RaIsotope, 
col="grey", 
names=verticalLabels, 
horizontal = FALSE, 
main = "Radioactivity of different samples meassured using Ionization Chamber", 
xlab = "Measurement",
ylab = "Sensor voltage",
boxwex=0.2)

# no X grid, Y grid grid aligns with the tick marks
grid(NA, NULL)


boxplot(backgroundLevel, AmIsotope, RaIsotope, 
col="grey", 
names=verticalLabels, 
horizontal = FALSE, 
main = "Radioactivity of different samples meassured using Ionization Chamber", 
xlab = "Measurement",
ylab = "Sensor voltage",
boxwex=0.2,
add=T)
