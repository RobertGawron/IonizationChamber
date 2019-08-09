install.packages('.\\software\\DataAcquisitionFromDevice\\packages\\CSV2Diagrams', repos = NULL, type="source")

require(CSV2Diagrams)

require(gridExtra)
#ls("gridExtra")

print(search())

print(ls("package:CSV2Diagrams"))

CSV2Diagrams::createDiagram("data.log")