## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse_x <- NULL
        set <- function(y) {
                x <<- y
                inverse_x <<- NULL
        }
        get <- function() x
        set_inverse <- function(inverse) inverse_x <<- inverse
        get_inverse <- function() inverse_x
        list(set = set, get = get,
                set_inverse = set_inverse,
                get_inverse = get_inverse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
