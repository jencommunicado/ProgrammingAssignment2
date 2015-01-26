## Programming Assignment2 -- 
## Find and Cache the Inverse of a Matrix

## Create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- funciton() x
  setmatrix<-function(solve) m<<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)

}


## Compute the inverse of the matrix returned by makeCacheMatrix
## if inverse has already been calculated, return the cached value

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setmatrix(m)
  m
  
}
