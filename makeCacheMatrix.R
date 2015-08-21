makeCacheMatrix <- function(x = matrix()) {
  invc <- NULL
  set <- function(y) {
    x <<- y
    invc <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invc <<- inverse
  getinverse <- function() invc
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}