## Assigment # 2. The below is to program a function to compute the inverse function of a matrix and store it. Rather than compute it repatedly. 

## The following function makes a CacheMatrix which is a Matrix containing a function to
##set the value of the matrix, get the value of the matrix and solve for the inverse and gets the values of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function()s
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## The following function calculates the inverse of a matrix. Checks fist to see if it has been already inverted, if so gets it from cache if not, calculates
##the inverted using function 'solve'

cacheSolve <- function(x, ...) {
       s <- s$getsolve 
       if(!is.null(s)) {
          message("getting cache data")
         return(s)
       }
       data <- x$get()
       s <- solve(data,...)
       x$setsolve(s)
       s   ## Return a matrix that is the inverse of 'x'
  }
