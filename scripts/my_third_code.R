#Data.frames

#Let's import some data
download.file(url = "https://ndownloader.figshare.com/files/2292169",
              destfile = "data_raw/portal_data_joined.csv")

library(tidyverse)

#read_csv is verbose and adds NA to empty cells
surveys <- read_csv("data_raw/portal_data_joined.csv")


head(surveys)

view(surveys)
#In data frame, each column is a vector and each column has same length
#R thinks of the data frame column-wise

str(surveys)

#dim() function outpts number of rows and columns
dim(surveys)
nrow(surveys)
ncol(surveys)

#gives name of columns
names(surveys)
colnames(surveys)


summary(surveys)

surveys[1, 6]
surveys[1,]

surveys[,1]

surveys[c(1,2,3),c(5,6)]

surveys[1:3, 5:6]
surveys[, -1]
surveys[, "sex"]
typeof(surveys["sex"])
class(surveys$sex)

surveys_200 <- surveys[200, ]
data.frame(surveys_200) 

surveys[nrow(surveys),]
tail(surveys)

surveys_last <- surveys[nrow(surveys),] 

surveys_middle<- surveys[(nrow(surveys))/2, ]
surveys_middle

#list is a simple data frame but data frame cannot always be a list

str(surveys)
surveys$sex <- factor(surveys$sex)

surveys$sex
levels(surveys$sex)


nlevels(surveys$sex)

sex <- factor(c("male", "female", "female", "male"), levels = c('male', 'female'))

surveys$taxa <- factor(surveys$taxa)
surveys$genus <- factor(surveys$genus)

levels(surveys$taxa)
summary(surveys$taxa)
nlevels(surveys$genus)
sum(surveys$taxa == "Rabbit")

as.character(sex)


year_fct <- factor(c(1990, 1983, 1977, 1997))
#This outputs 
as.numeric(year_fct)

#
as.numeric(as.character(year_fct))

as.numeric(levels(year_fct))[year_fct]
as.factor(year_fct)

plot(surveys$sex)

#levels shows only F and M
levels(surveys$sex)
summary(surveys$sex)
sex <- surveys$sex
levels(sex)

#addNA adds NA in the levels
sex <- addNA(sex)
levels(sex)

#Replace NA to have different labels
levels(sex)[3] <- "undetermined"
levels(sex)
sex
plot(sex)

levels(sex)[1:2] <- c('female','male')
levels(sex)

#change the order of levels and way its plotted
sex <- factor(sex, levels = c("undetermined", "female", "male"))
plot(sex)
