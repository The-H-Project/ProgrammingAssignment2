## Put comments here that give an overall description of what your
## functions do
## R Programming Programming Assignment 2 (Week 3)

## Write a short comment describing this function
# makeCacheMatrix: a Function of four parts:
# $setMatrix: sets the matrix values
# $getMatrix: gets the set matrix values, if existing

makeCacheMatrix <- function(x = matrix()) {
  setMatrix <- function (y) {
       x <<- y
  }
  list (setMatrix = setMatrix)  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
