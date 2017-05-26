source("class-4-EDA-Project2.R")
#Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
library(stringr)


coal<-NEISCC %>%
  filter(grepl("coal",NEISCC$EI.Sector,ignore.case=TRUE))
coal<- coal %>%
  group_by(year) %>%
  summarise(total=sum(Emissions))
ggplot(coal,aes(year,total))+
  geom_point()+
  geom_line()+
  ggtitle("plot4,coal combustion emission")

dev.copy(png,"plot4.png")
dev.off()
