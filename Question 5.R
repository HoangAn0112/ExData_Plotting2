library(dplyr)

  # Extract Vehical data from SCC
  Veh_data <- grepl("vehicle", SCC$Short.Name, ignore.case=TRUE)
  Veh_data <- SCC[Veh_data,]

  # Finding Emission data of vehical data in Bal
  data <- merge(Bal,Veh_data, by="SCC")
  # Group data by year  
  data <- tapply(data$Emissions,data$year,sum)
  # Plot
  png("plot5.png", width=480, height=480)
  plot(names(data), data, col = "red", xlab="YEARS", ylab = "Total emissions",
     main = "Total emission by car source")
  # Save plot
  dev.off()
