## Total emissions from PM2.5 of Baltimore by year

  # Load data into R
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  # Calculate total emission of each year
  Bal <- subset(NEI, NEI$fips=="24510")
  data <- tapply(Bal$Emissions,Bal$year,sum)
  # Plot
  png("plot2.png", width=480, height=480)
  plot(names(data), data, col = "red", xlab="YEARS", ylab = "Total emissions")
  # Save plot
  dev.off()