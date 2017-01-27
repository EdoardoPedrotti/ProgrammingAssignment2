## Put comments here that give an overall description of what your
## functions do

## Create cache matrix 
## initialize inverse to NULL
## crete getter and setter for original matrix x
## create getter and setter for inverse 
## return cacheMatrix

makeCacheMatrix <- function(x = matrix()) {
  inverse = NULL
  set <- function(y) {
     x <<- y
     m <<- NULL
  }
  
  get <-function() x
  setInverse = function(inv) inverse <<- inv
  getInverse = function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}




## return inverse if cached else compute invese and save
## get inverse o cacheMatrxi x
## if altready computer return inverse matrix 
## else compute inverse
## set x inverse 
## return inverse matrix 

cacheSolve <- function(x, ...) {
  i = x$getInverse()
  if(!is.null(i)) {
   print("getting cached inverse")
    return(i)
  }
  
  data = x$get()
  i = solve(data, ...)
  x$setInverse(i)
  i
  
  
}
