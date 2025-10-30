## Put comments here that give an overall description of what your
## functions do:

## makeCacheMatrix:
## set() → stores a new matrix
## get() → returns the matrix
## setInverse() → stores the inverse
## getInverse() → retrieves the cached inverse (if it exists)

## Creates an object that “remembers” a matrix and (if available) its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<-y
                inv <- NULL
}
get <- function() x
set_Inverse <- function(inverse) inv <<- inverse
get_Inverse <- function() inv
list(set=set, get=get, set_Inverse=set_Inverse, get_Inverse=get_Inverse)
}

## This function computes the inverse or retrieves it from the cache if it’s already computed

cacheSolve <- function(x, ...) {
inv <- x$get_Inverse()
if(!is.null(inv)){
        message("getting cached data")
        return(inv)
}
mat <- x$get()              
inv <- solve(mat, ...)      
x$set_Inverse(inv)          
inv                        
}

