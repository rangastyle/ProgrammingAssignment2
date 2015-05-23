## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inv=NULL

set=function(y)  {

   x<<-y

inv<-NULL
}
get<-function(inverse) x
set inv<-function(inverse)
   inv<<-inverse

  get inverse() inv 

list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

inv=x$getinverse
if (Iis.null()){
message ("getting cached data")
}
data<-x$get()
x$setinverse(inv)


return (inv)

## Return a matrix that is the inverse of 'x'
}
