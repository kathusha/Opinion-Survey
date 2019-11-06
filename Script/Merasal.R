  # Read CSV 
  data<- read.csv(file="D:/Education/SI/Electiondata.csv", header=TRUE, sep=",")
  names(data)
  str(data)
  summary(data)

  # Contestant Analysis Whole Country
  ggplot(data, aes(x=Q3)) + 
    geom_bar(aes(y = (..count..)/sum(..count..),fill = "#FF6665")) +
    geom_text(aes(label = scales::percent((..count..)/sum(..count..)),
                  y= ((..count..)/sum(..count..))), stat="count",
              vjust = -.25)+
    scale_y_continuous(labels=scales::percent) +
    ylab("Relative frequencies")
  
  
  #districtwise Analysis
  ggplot(data, aes(x=Q3)) + 
    geom_bar(aes(y = (..count..)/sum(..count..),fill = "#FF6665")) +
    geom_text(aes(label = scales::percent((..count..)/sum(..count..)),
                  y= ((..count..)/sum(..count..))), stat="count",
              vjust = -.25)+
    scale_y_continuous(labels=scales::percent) +
    ylab("Relative frequencies")
  
  #GenderWise Analysis
  ggplot(data, aes(x= Q9,  group=Q3)) + 
    geom_bar(aes(y = ..prop.., fill = factor(..x..)), stat="count") +
    geom_text(aes( label = scales::percent(..prop..),
                   y= ..prop.. ), stat= "count", vjust = -.5) +
    labs(y = "Percent", fill="Q3") +
    facet_grid(~Q3) +
    scale_y_continuous(labels = scales::percent)
  
  #District and ContestantWise Analysis
  ggplot(data = data) +
    geom_bar(mapping = aes(x = Q14, fill = Q3))

  #Guessed Winning party vs actual voted personnal Analysis
  ggplot(data = data) +
    geom_bar(mapping = aes(x = Q2, fill = Q3))
  
  #Last Presidential Election Vote for candidates and vote for candidate of  this election 
  ggplot(data = data) +
    geom_bar(mapping = aes(x = Q8, fill = Q3))

# influence from Society
ggplot(data, aes(x= Q4,  group=Q3)) + 
  geom_bar(aes(y = ..prop.., fill = factor(..x..)), stat="count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5) +
  labs(y = "Percent", fill="Q3") +
  facet_grid(~Q3) +
  scale_y_continuous(labels = scales::percent)

#Income/Salary RangeWise Analysis
ggplot(data = data) +
  geom_bar(mapping = aes(x = Q17, fill = Q3))

#First Presidential election or not
ggplot(data = data) +
  geom_bar(mapping = aes(x = Q6, fill = Q3))

#Educational Level
ggplot(data = data) +
  geom_bar(mapping = aes(x = Q6, fill = Q3))
