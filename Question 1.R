
## Total emissions from PM2.5 by year
  
  # Load data into R
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  # Calulate total emission of each year
  data1 <- tapply(NEI$Emissions,NEI$year,sum)
  # Plot
  plot(names(data1), data1, col = "red", xlab="YEARS", ylab = "Total emissions")
  # Save plot
  png("plot1.png", width=480, height=480)
  dev.off()
  