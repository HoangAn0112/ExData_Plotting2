
## continute of question 5
  # Calculate total California "06037" emission of each year  
  Cal <- subset(NEI, NEI$fips=="06037")
  # Finding Emission data of vehical data in Cal
  data1 <- merge(Cal,Veh_data, by="SCC")
  # Group data by year  
  data1 <- tapply(data1$Emissions,data1$year,sum)
  Q6 <- rbind(data,data1)
  # Draw plot
  row.names(Q6) <- c("Baltimore","Los Angeles")
  
  # plotting
  barplot(Q6,xlab = "Year", ylab = "Total Emission (ton)", legend.text = TRUE,
          main = "Total Emission from motor sources in Baltimore and Los Angeles")
  # Save plot
  png("plot6.png", width=480, height=480)
  dev.off()
  