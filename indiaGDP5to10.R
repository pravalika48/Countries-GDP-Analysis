fiveyears <- factbookclass[91:100]
fiveyears
indiarow <- fiveyears[114,]
indiarow
yearsftt <- c(indiarow$X2005,indiarow$X2006, indiarow$X2007, indiarow$X2008, indiarow$X2009, indiarow$X2010)
yearsftt
y <- c("2005", "2006", "2007", "2008", "2009", "2010")
y
barplot(yearsftt ,main="India GDP from 2005 to 2010",names.arg = y, xlab="years", ylab = "India", col=c("blue","orange","green","gold", "pink", "red"))
