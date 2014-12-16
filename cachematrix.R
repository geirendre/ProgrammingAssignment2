## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Creates a matrix from the supplied data.
# reverses the matrix with 'solve' and store it in variable m 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, 
       get = get, 
       setmatrix = setmatrix, 
       getmatrix = getmatrix)
}


## Write a short comment describing this function
# Check if m is not empty. If so return the data stored in variable m
# If m is empty then reverse the supplied matrix, 
# stroe it in m, and return it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
