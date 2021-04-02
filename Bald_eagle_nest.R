nest <- read.csv(file="Alaska_Bald_Eagle_Nest_Sites_(USFWS).csv")
View(nest)
str(nest)

library(stringr)

year <- as.character(str_sub(string= nest$modayyr, start=1, end=4))  
head(year)

nest$Year <- year

View(nest)
str(nest)
write.csv(x=nest, file="Alaska_Bald_eagle_nest_yearfixed.csv")
