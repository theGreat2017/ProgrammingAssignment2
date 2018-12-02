## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

##Functions "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix.

makeCacheMatrix <- function(x=matrix()){        ##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

cacheSolve <- function(x, ...){                 ##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
        m <- x$getInverse()
        if (!is.null(m)){
                message("Getting cahced data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
}
