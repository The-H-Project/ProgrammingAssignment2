## R Programming Programming Assignment 2 (Week 3)
## Version Date: 20150822

# makeCacheMatrix: a Function of two parts:
# $get: gets the set matrix values, if existing
# $set: overwrite cached matrix values

## To use makeCacheMatrix
## 1. Create a matrix.
##    > testMatrix <- makeCacheMatrix(matrix(1:9,3,3))
## 2. Display the assigned matrix.
##    > testMatrix$get()
## 3. Overwrite the assigned matrix with a new one.
##    > testMatrix$set(matrix(1:4,2,2))
## 4. Display the newly assigned matrix.
##    > testMatrix$get()
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
## To use cacheSolve (continuing step numbers from above):
## 5. Get the inverse of the matrix held the cache.
## > aniMatrix <- cacheSolve(testMatrix$get())
## 6. Do it again to get the result from the cache.
## > aniMatrix <- cacheSolve(testMatrix$get())
## 7. Change the matrix to force the inverse cache to recalculate.
## > testMatrix$set(matrix(1:12,3,4))
## 8. Get the inverse of the matrix held the cache.
## > aniMatrix <- cacheSolve(testMatrix$get())

cacheSolve <- function(cachedMatrix, ...) {
  
  # Provide the cached inverse matrix if available.
  if (!is.null(inversedMatrix)) {
     message ('Returning inverse from cache')
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
