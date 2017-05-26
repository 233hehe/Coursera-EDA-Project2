source("class-4-EDA-Project2.R")
#Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
#which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
#Which have seen increases in emissions from 1999–2008? 
#Use the ggplot2 plotting system to make a plot answer this question.

BalType <- NEI %>%
  filter(fips==24510) %>%
  group_by(type,year) %>%
  summarise(total=sum(Emissions))

ggplot(data=BalType,mapping = aes(x=year,y=total,fill=type)) +
  geom_bar(stat="identity",position="dodge")+
  geom_line(position = position_dodge(width=1),aes(col=type))+
  xlab("year") +
  ylab(expression("Emissions")) +
  ggtitle('plot3 emission baltimore by type')
dev.copy(png,'plot3.png')
dev.off()