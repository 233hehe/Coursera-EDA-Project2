source("class-4-EDA-Project2.R")
#Have total emissions from PM2.5 decreased in the 
#Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
#Use the base plotting system to make a plot answering this question.

Baltimore <- NEI %>%
  filter(fips==24510) %>%
  group_by(year) %>%
  summarise(total=sum(Emissions))
barplot(Baltimore$total,names.arg=Baltimore$year,
        main="plot2, Baltimore Emission Decrease?",xlab="year",ylab="emission")

dev.copy(png,"plot2.png")
dev.off()
