## Total emissions from PM2.5 of Baltimore by year and type

  # Load data into R
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  # Calculate total emission of each year
  Bal <- subset(NEI, NEI$fips=="24510")
  data <- aggregate(Emissions~type+year,Bal,sum)
  
  # Plot
  library(ggplot2)
  g <- ggplot(data,aes(year, Emissions, color = type))
  g + xlab("Year") + ylab("Emissions") + 
    ggtitle("Total Emissions per type in Baltimore") +geom_line() 
  
  # Save plot
  png("plot3.png", width=480, height=480)
  dev.off()