### Swirl Practice for R-Programming Coursera

library(swirl)
swirl()

## Workspace and Files
getwd()
ls()          # list all the objects in your local workspace
list.files()  # lists all files in working directory
args()
dir.create()
setwd()
setwd("./data") #
setwd("../")   # `../` moves up one working directory
file.create()
file.exists()
file.info()
file.info("mytest.R")$mode  # --- to grab specific items
file.rename()
file.copy()
file.path()
dir.create("testdir2/testdir3", recursive = TRUE)  #Create a directory in the current working directory and a subdirectory
unlink("testdir2", recursive = TRUE)               # Delete the directory
     # you need the recursive = TRUE argument. Otherwise, R is concerned that you are 
     # unaware that, when deleting testdir2, you are also deleting testdir3, which is 
     # nested within it.

## Sequences of numbers
seq( , length = 100)
length()
seq_along()
rep( , times = 100, each = 100)

## Vectors
c()
paste( , collapse = " ")

## Logical Operators
     # The `<` and `>=` symbols in these examples are called 'logical operators'. Other logical operators include `>`,
     # `<=`, `==` for exact equality, and `!=` for inequality.
     # If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B (logical 'or'
     # a.k.a. 'union') or whether they are both TRUE with A & B (logical 'and' a.k.a. 'intersection'). Lastly, !A is the
     # negation of A and is TRUE when A is FALSE and vice versa.

## Missing Values
rnorm(1000) # a vector containing 1000 draws from a standard normal distribution
sample()    # select X elements at random combining y and z
is.na()
sum()

## Subsetting Vectors
x[!is.na(x)]    # removes the NA values from x
y[y > 0]        # A vector of all the positive elements of y
                # Since NA is not a value, but rather a placeholder for an unknown quantity, the
                # expression NA > 0 evaluates to NA.
x[c(3, 5, 7)]   # how we'd subset the 3rd, 5th, and 7th elements of x
x[-c(2, 10)]    # all elements of x EXCEPT for the 2nd and 10 elements
c(foo = 11, bar = 2, norf = NA)  # a numeric vector with three named elements
names()
identical()
vect[c("foo", "bar")]            # subset a vector using the names
order()         # alphabetize or sort a data.frame, etc..
class()
unlist()        # coerces a list into a vector
unique()        # returns all the unique values in a variable

## Vectors and Dataframes
dim() # rows and columns
dim(my_vector) <- c(4, 5)   #gives a vector dimension attributes
attributes()
class()
matrix()
cbind()                     # uses 'implicit coercion'
data.frame()
colnames()
colnames(my_data) <- cnames # assigns column names

## Logic
TRUE && c(TRUE, FALSE, FALSE)  #&& only evaluates the first value of the vector, not recursive as in `&`
TRUE || c(TRUE, FALSE, FALSE)  #|| is not vectorized, while `|` is
        # All `&` operators are evaluated prior to `|` operators
isTRUE()
xor()   # The xor() function stands for exclusive OR; If one argument evaluates to
        # TRUE and one argument evaluates to FALSE, then this function will return TRUE,
        # otherwise it will return FALSE.
sample() # creates a random sampling of integers from 1 to X without replacement
which()  #returns the indices of the vector that are TRUE
any(x < _)
all()