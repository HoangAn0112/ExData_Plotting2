library(dplyr)

  # Extract Coal data from SCC
    Col_data <- grepl("Coal", SCC$Short.Name, ignore.case=TRUE)
    Col_data <- SCC[Col_data,]
    
  # Finding Emission data of Coal data in NEI
    data <- merge(NEI,Col_data, by="SCC")
  # Group data by year  
    data <- tapply(data$Emissions,data$year,sum)
    # Plot
    png("plot4.png", width=480, height=480)
    plot(names(data), data, col = "red", xlab="YEARS", ylab = "Total emissions",
         main = "Total emission by coal source")
    # Save plot
    dev.off()
    