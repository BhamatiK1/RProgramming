## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 iMatrix <- NULL
 setMatrix <- function(y){
   x <<- y
   iMatrix <- NULL
 }
 getMatrix <- function(x)
 setInverse <- function(inverse) iMatrix <<- inverse
 getInverse <- function() iMatrix
 list(setMatrix = setMatrix, getMatirx = getMatirx, setInverse = setInverse, getInverse = getInverse)
 
 }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  iMatrix <- x$getInverse()
  if(!is.null(iMatrix)){
    message("Getting Cached Data")
    return(iMatrix)
  }
  mDAta <- x$getMatrix()
  iMatrix  <- solve(mData, ...)
  x$setInverse(iMatrix)
  return(iMatrix)
  }
