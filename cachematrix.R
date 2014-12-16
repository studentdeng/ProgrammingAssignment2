## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  value <- NULL
  set <- function(y) {
    x <<- y
    value <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) value <<- inverse
  getInverse <- function() value
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverseValue <- x$getInverse()
  if(!is.null(inverseValue)) {
    message("getting cached data")
    return(inverseValue)
  }
  data <- x$get()
  inverseValue <- solve(data, ...)
  x$setInverse(inverseValue)
  inverseValue
}
