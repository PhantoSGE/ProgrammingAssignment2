## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        matrixinv <- NULL
        set <- function(y) {
                x <<- y
                matrixinv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) matrixinv <<- inverse
        getinv <- function() matrixinv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        matrixinv <- x$getinv()
        if(!is.null(matrixinv)) {
                message("getting cached data")
                return(matrixinv)
        }
        data <- x$get()
        matrixinv <- solve(data, ...)
        x$setinv(matrixinv)
        matrixinv 
}

        ## Return a matrix that is the inverse of 'x'