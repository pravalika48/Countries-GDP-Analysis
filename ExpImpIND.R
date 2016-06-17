names(factbookclass)
exim <- factbookclass[c(9, 17)]
exim
indiaeximrow <- exim[114,]
indiaeximrow
ei <- c(indiaeximrow$Exports, indiaeximrow$Imports)
ei
gdp <- factbookclass[c(10)]
gdp
namesei <- c("Exports", "Imports")
barplot(ei ,main="exports, imports with GDP",names.arg = namesei, xlab="years", col=c("blue","red"))
