## R Programming Programming Assignment 2 (Week 3)
## Version 20150821

# makeCacheMatrix: a Function of two parts:
# $get: gets the set matrix values, if existing
# $set: overwrite cached matrix values

## To use makeCacheMatrix
## 1. Assign create a matrix.
##    > testMatrix <- makeCacheMatrix(matrix(1:9,3,3))
## 2. Get the assigned matrix.
##    > testMatrix$get()
## 3. Overwrite the assigned matrix with a new one.
##    > testMatrix$set(matrix(1:4,2,2))
makeCacheMatrix <- function(cachedMatrix = matrix()) {
  
  # Return the stored matrix.
  get <- function () cachedMatrix
  
  # Overwrite the stored matrix with a new one, and wipe out the cached inversed Matrix.
  set <- function (y) {
       cachedMatrix <<- y
       inversedMatrix <<- NULL
  }
  
  list (get = get, set = set)  
}


## cacheSolve: computes the inverse of the matrix held in makeCacheMatrix
## Use: aniMatrix <- cacheSolve(testMatrix$get())

cacheSolve <- function(cachedMatrix, ...) {
  
  # Provide the cached inverse matrix if available.
  if (!is.null(inversedMatrix)) {
     return (inversedMatrix)
  }
  # Otherwise, attempt to solve for the inverse. 
  # If the matrix is square, we can probably get the inverse matrix.
  if (nrow(cachedMatrix) == ncol(cachedMatrix)){
     inversedMatrix <<- solve(cachedMatrix)
  }
  else {
     message('Matrix has an unequal number of rows and columns and not may be inverted.')
     inversedMatrix <<- NULL
  }
}
