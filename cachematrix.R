## Tow functions that cache the inverse of a matrix
## Creates a matrix that can cache its inverse
makeCacheMatrix <- function( x = matrix() ) {
 
  ## assigned to a variable inv
  inv <- NULL 
 
  ## set the value of the matrix
  set <- function( matrix ) {
    x <<- y
    inv <<- NULL
  }
  
  ## Get the value of the matrix
  get <- function() {x}
  
  ## Set the value of the inverse
  setInverse <- function(inverse) {inv <<- inverse}
  
  ## Get the value of inverse
  getInverse <- function() {inv}
  
  ## Create a list of the methods
  list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}

## this is used to get the cache data
cacheSolve <- function(x, ...) {
  
  ## returns a matrix that is inverse of X and assigns to inv
  inv <- x$getInverse() 
  
  ## checking whether the inverse is NULL
  if( !is.null(inv) ) {
    message("getting cached data")
    return(imv)
  }
  
  ## Get the matrix from our object
  data <- x$get()
  
  ## Calculate the inverse value
  inv <- solve(data)
  
  ## Set the inverse to the object
  x$setInverse(inv)
  
  ## Return the matrix that is the inverse of X
  inv
}
