## These functions will create a matrix, solve its inverse and store it to the cache


## This function creates a matrix, gets the values in the matrix
## inverts the matrix and finds the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <-function(y){
    x<<-y
    m<<-NULL
  }
  get<- function()x
  setinverse<-function(inverse) m <<- inverse
  getinverse<-function() m
  list(set=set, get=get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function calculates the inverse of the matrix created above. First, it checks
## to see if the inverse has already been calculated. If so, it pulls it from the cache.
## If not it calculates the inverse and sets the value in the cache
##using the 'setinverse' function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
           message("getting cached data")
           return(m)
        }
  data<- x$get()
  m<-solve(m)
  m
}

