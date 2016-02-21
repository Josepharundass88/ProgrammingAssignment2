## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  var1 <- NULL
  set <- function(y) {
    a <<- y
    var1 <<- NULL
  }
  get <- function() a
  setInverse <- function(inverse) var1 <<- inverse
  getInverse <- function() var1
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(a, ...) {
  ## Return a matrix that is the inverse of 'a'
  var1 <- a$getInverse()
  if (!is.null(var1)) {
    message("getting cached data")
    return(var1)
  }
  mat <- a$get()
  var1 <- solve(mat, ...)
  a$setInverse(var1)
  var1
}
