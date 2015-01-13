## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matr = matrix()) {
    matrInverse <- NULL
    set <- function(y) {
        matr <<- y
        matrInverse <<- NULL
    }
    get <- function() matr
    newinverse <- function(c) matrInverse <<- c
    invert <- function() matrInverse
    list(set = set, get = get,
         newinverse = newinverse,
         invert = invert)
}


## Write a short comment describing this function

cacheSolve <- function(matr) {
    ## Return a matrix that is the inverse of 'matr'
    matrInverse <- matr$invert()
    if(!is.null(matrInverse)) {
        message("getting cached data")
        return(matrInverse)
    }
    matrInverse <- solve(matr$get())
    matr$newinverse(matrInverse)
    matrInverse
}
