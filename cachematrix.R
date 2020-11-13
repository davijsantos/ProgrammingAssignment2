## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() {x}
  setinvertedmatrix <- function(matrixinverse) {inverse <<- matrixinverse}
  getinvertedmatrix <- function() {inverse}
  list(set = set, get = get,
    setinvertedmatrix = setinvertedmatrix,
    getinvertedmatrix = getinvertedmatrix)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invertedmatrix <- x$getinvertedmatrix()
  if(!is.null(invertedmatrix)) {
    message("getting cached data")
    return(invertedmatrix)
  }
  data <- x$get()
  invertedmatrix <- solve(data, ...)
  x$setinvertedmatrix(invertedmatrix)
  invertedmatrix
}
