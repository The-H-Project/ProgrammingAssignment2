## R Programming Programming Assignment 2 (Week 3)
## Version 20150821

# makeCacheMatrix: a Function of four parts:
# $get: gets the set matrix values, if existing
# $set: overwrite cached matrix values

## To use makeCacheMatrix
## 1. Assign create a matrix.
##    testMatrix <- makeCacheMatrix(matrix(1:4,2,2))

makeCacheMatrix <- function(cachedMatrix = matrix()) {
  
  # Wipe out any stored Inverse Matrix values.
  inverseMatrix <- NULL
  
  get <- function () cachedMatrix
  
  set <- function (y) {
       cachedMatrix <<- y
  }
  
  
  
  
  
  list (get = get, set = set)  
  
}


## cacheSolve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
