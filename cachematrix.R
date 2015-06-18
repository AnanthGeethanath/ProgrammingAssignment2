## The below 2 functions will take an invertible matrix and cache its mean

## The below function implements the get and set functions for cacheSolev function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  
  set<- function(y){
    mat<<-y
    inv<<-NULL  
  }
  
  get<-function() mat
  
  setInverse <- function(i) inv<<-i
  getInverse <- function() inv
  list(set=set, get=get, 
       setInverse=setInverse, 
       setInverse=setInverse )

}


## Returns the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    print("getting inverse from cache")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data, ...)
  x$setInverse(inv)
  inv 
  
}
