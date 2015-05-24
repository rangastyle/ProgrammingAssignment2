## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## @x: a square invertible matrix
## return: a list containing functions to
##              1. set the matrix
##              2. get the matrix
##              3. set the inverse
##              4. get the inverse
##         this list is used as the input to cacheSolve()

makeCacheMatrix <- function(x = matrix()) {
  
# x is an invertible square matrix
# The function makeCacheMatrix creates a list containing a function to:
# 1.set the value of the matrix
#2.get the value of the matrix
#3.set the value of the matrix inverse
#4 get the value of the matrix inverse

inv=NULL

set=function(y)  {

   x<<-y
inv<-NULL
}
get<-function() x
setinverse<-function(inverse)
   inv<<-inverse

  getinverse<-function()inv 

list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
# x is the output from the "makeCacheMatrix" function
#Function returns the inverse of matrix that was an input in the function
# "makeCacheMatrix" above.
  
inv=x$getinverse()
if (!is.null(inv)){
message ("getting cached data.")
return(inv)
}
data<-x$get()
inv<-solve(data,...)
x$setinverse(inv)

#Calculate the inverse of the matrix if it has not been calcuated already.
#But if inverse is already, skip the computation and get the cache.

inv

## Return a matrix that is the inverse of 'x'
}
