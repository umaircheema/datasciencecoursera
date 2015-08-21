cacheSolve <- function(x, ...) {
  invc <- x$getinverse()
  if(!is.null(invc)) {
    message("getting cached data")
    return(invc)
  }
  data <- x$get()
  invc <- solve(data, ...)
  x$setinverse(invc)
  invc
}