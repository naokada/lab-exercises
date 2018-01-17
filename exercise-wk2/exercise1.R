## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# sum() should take numeric elements as parameter, but in this code,
# one of the parameter is String.

install.packages("stringr")


my.line <- "Hey, hey, this is the library"

print(str_length(my.line))
# 
# Describe why this doesn't work: 
# This code does not install stringr packages, we cannot use str_length
# fuction in that package. To install this package, we need library("stringr")
# after install.packages("stringr").

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is not deleared in this code.
# We need to fix the name of this variable.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
first.vector <- c(1,2,3)
second.vector <- c(3,6,7,5)
third.vector <- c(5,6,3,8,9,4)
class.name <- c("Informatics 201", "CSE331")

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(first.vector, second.vector) {
  first.length <- length(first.vector)
  second.length <- length(second.vector)
  result <- paste("The difference in lengths is", first.length - second.length)
  return(result)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(first.vector, second.vector)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(first.vector, second.vector) {
  first.length <- length(first.vector)
  second.length <- length(second.vector)
  if (first.length > second.length) {
    result <- paste("Your first vector is longer by", first.length - second.length ,"elements")
  } else {
    result <- paste("Your second vector is longer by", second.length - first.length ,"elements")
  }
  return(result)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(first.vector, second.vector)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVector <- function(first.vector, second.vector, third.vector) {
  result <- c(first.vector, second.vector, third.vector)
  return(result)
}

# Send 3 vectors to your function to test it.
CombineVector(first.vector, second.vector, third.vector)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(name) {
  result <- tolower(name)
  return(result)
}

