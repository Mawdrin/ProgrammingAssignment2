## MakeCacheMatrix is a function that creates a 'matrix' object that
## can cache it's inverse from the input


makeCacheMatrix <- function(x = matrix()) {
      mcm <- NULL
      set <- function(y) {
            x <<- y
            mcm <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) mcm <<- solve
      getinverse <- function() mcm
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}



## cacheSolve is a function which computes the inverse of the returned 
## output by the above function makeCacheMatrix

cacheSolve <- function(x) {
      mcm <- x$getinverse()
      if(!is.null(mcm)) {
            message("getting cached data")
            return(m)
      }
      matrix2 <- x$get()
      mcm <- solve(matrix2)
      x$setinverse(mcm)
      mcm
}
