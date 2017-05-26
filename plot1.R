source("class-4-EDA-Project2.R")
#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
#Using the base plotting system, make a plot showing the total PM2.5 
#emission from all sources for each of the years 1999, 2002, 2005, and 2008.

NEI %>%
  group_by(year) %>%
  summarise(total=sum(Emissions)) %>%
  plot(type="b",col='red',main="plot1 Total Emission Decrease?",xlab="year",ylab="total emission")

dev.copy(png,'plot1.png')
dev.off()
