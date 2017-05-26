source("class-4-EDA-Project2.R")
#How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

BalMotor<-NEI %>%
  filter(type=="ON-ROAD"&fips==24510)

BalMotor<- BalMotor%>%
  group_by(year) %>%
  summarise(total=sum(Emissions))

ggplot(BalMotor,aes(year,total))+
  geom_point()+
  geom_line()+
  ggtitle("plot5,motor Baltimore emission")

dev.copy(png,"plot5.png")
dev.off()
