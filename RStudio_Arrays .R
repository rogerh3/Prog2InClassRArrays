#Roger H Hayden III
#SCS 142
#Arrays

# Clear Screen:  Ctrl + L
# Clear Screen:  cat("\014")
# Clear a Var:   rm(var name)
# Clear all Var  rm(list = ls())

# Vector:        Essentially an array / Collection of like content
# Matrix:        2 Dimensional Vector
# Array:         Vector with 1 or more dimensions
# DataFrame/df:  Table

# Matrix/Vector
# c stands for column, we are building in columns not rows
myMatrix <- c(5,6,4,3)
myMatrix2 <- c(7,2,1,5)
myMatrix3 <- c(8,3,2,6,1,6,7,0)

# An Array takes vectors as input
# This will create two 4x4 matrices
myArray <- array(c(myMatrix,myMatrix2,myMatrix3), dim = c(4,4,2))
# Dimensions (row, columns, dimensions)
# in this case the two 4x4 matrices or dim = c(4,4,2)
print(myArray)
# R knows how to split matrix 3 into 2 columns because of the dim stated

# What do you notice about the additional, concatenated fields?
myArray <- array(c(myMatrix,myMatrix2,myMatrix3), dim = c(6,4,2))
print(myArray)
# This can be dangerous because we did not list columns correctly for this
# This will loop back to the first few numbers since there is not enough listed

# The 2nd dimension or so on will continue where the dimension before left off at

#Let's make it easier to read
column.names <- c("Col 1", "Col 2", "Col 3", "Col 4")
row.names <- c("Row One", "Row Two", "Row Three", "Row Four")
matrix.names <- c("My Matrix 1", "My Matrix 2")   #Dimensions/Tabs

myUpdatedArray <- array(c(myMatrix,myMatrix2), dim = c(4,4,2), dimnames = list(row.names, column.names, matrix.names))
print(myUpdatedArray)

# How do I reference a specific element?

# First Row, Third Column, First Matrix
print(myArray[1,3,1])

# Second Row, Entire Column, Second Matrix
print(myArray[2,,2])

#First Matrix
print(myArray[,,1])

# Adding the elements of two matrices together
firstMatrix <- c(1,2,3)
secondMatrix <- c(4,5,6)
jointMatrix <- firstMatrix + secondMatrix
print(jointMatrix)


