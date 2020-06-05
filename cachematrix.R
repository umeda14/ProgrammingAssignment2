## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Peer-graded Assignment: Programming Assignment 2: Lexical Scoping
## Write a short comment describing this function


cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {?version()
m <- matrix(rnorm(16),4,4)

    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
