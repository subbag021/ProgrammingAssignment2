## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1. set and get the value of the matrix
# 2. set and get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) { inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinver <- function(inverse) inv <<- inverse
    getinver <- function() inv
    list(set=set, get=get, setinver=setinver, getinver=getinver)

}




# Below function provides the matrix as iverse

cacheSolve <- function(x, ...) {inv <- x$getinver()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinver(inv)
    inv
        ## Return a matrix that is the inverse of 'x'
}
