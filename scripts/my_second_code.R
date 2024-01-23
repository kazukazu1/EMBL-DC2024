#vector can contain either character, numeric, or boolean values
weight_g <- c(50, 60, 65, 82)

animals <- c("mouse", "rat", "dog")

#get the length of the vector
#vector can only contain the same type of data
length(animals)
length(weight_g)

class(animals)
class(weight_g)

#structure of the object
str(animals)

#how to add an element to the beginning of a vector
animals <-c("cincilla", animals)
animals <- c(animals, "frog")

typeof(animals)
typeof(weight_g)

#Vector forcefully converts mixed variables into one variable type
num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, T)
char_logical <- c("a", "b", "c", T)
tricky <- c(1, 2, 3, "4")
#logical -> Numeric -> Char
#logical -> Char

#Subsetting a factor
animals[2]
animals[c(1,2)]

more_animals <- animals[c(1,2,3,2,1,4)]
more_animals

#Displays only the last two values
weight_g[c(FALSE, FALSE, TRUE, TRUE)]
weight_g[weight_g > 63]
weight_g[weight_g >63 & weight_g < 80]
weight_g[weight_g <58 | weight_g > 80]
#list of operators: <, >, ==, !=, <=, >=

weight_g == 65

animals[animals == "rat" | animals == "frog"]
# %in% helps us find all elements corersponding to a vector of elements of our choice

animals %in% c("rat", "frog", "cat", "duck","dog")
#Now subsetting with this logic will output elements in the list 
animals [animals %in% c("rat", "frog", "cat", "duck","dog")]

#An exmaple of a vector with missing data
heights <- c(2, 4, 4, NA, 6)

#running this code will output NA
mean(heights)

#adding na.rm=T inside the bracket will allow function to igore
mean(heights, na.rm = T)
max(heights, na.rm = T)

#Checks if there are any NA value
is.na(heights)

#Checks if there are any values that are not NA
!is.na(heights)

heights[!is.na(heights)]
#omit the missing data
na.omit(heights)
#extract the complete cases
complete.cases(heights)

mean(na.omit(heights))

length(heights[heights>4])

heights <- c(63, 69, 60, NA, 68, 61)

heights_no_na <- na.omit(heights)
#or
heights_no_na <- heights[!is.na(heights)]
heights_no_na

median(heights_no_na)
length(heights_no_na[heights_no_na>67])

sum(heights_no_na>67)
sum(TRUE, FALSE, TRUE, FALSE)
