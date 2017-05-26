source("class-4-EDA-Project2.R")
#Compare emissions from motor vehicle sources in Baltimore City with 
#emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). 
#Which city has seen greater changes over time in motor vehicle emissions?

Motor<-NEISCC %>%
  filter(fips==24510 |fips== "06037") %>%
  filter(type=="ON-ROAD")

Motor<- Motor%>%
  group_by(year,fips) %>%
  summarise(total=sum(Emissions))

ggplot(Motor,aes(year,total,col=fips))+
  geom_point()+
  geom_line()+
  ggtitle("plot6,Balimore vs LA")

dev.copy(png,"plot6.png")
dev.off()
