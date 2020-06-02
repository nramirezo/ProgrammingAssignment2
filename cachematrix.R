## Put comments here that give an overall description of what your
## functions do

## The first function, makeCacheMatrix creates a matrix, list containing a function to:

#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function() inv
        list(set = set, get = get,
             setInverse = setInverse, 
             getInverse = getInverse)

}


## Return a matrix that is the inverse of "x"

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setInverse(inv)
        inv
}
