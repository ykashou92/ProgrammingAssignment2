## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# inverse_x is defaulted to NULL
# 'set' is defined as a function that takes y as an argument and caches the the value of 'y'
# into a variable called 'x'
# inverse_x is defauled to NULL inside the 'set' function environment as well
# 'get' is defined as a function that takes no arguments and prints x
# makeCacheMatrix basically cashes the value of a matrix such that cacheSolve
# can solve for the inverse

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
# cacheSolve takes in a predefined cached matrix through makeCacheMatrix, 
# and solves for the inverse of that matrix by first checking if the inverse_x variable is not
# NULL and hence gets cached matrix data and returns it. 
# Else inverse_x it solves for the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse_x <- x$get_inverse()
        if (!is.null(inverse_x)) {
                message("getting cached matrix data")
                return(inverse_x)
        } else {
                inverse_x <- solve(x$get())
                x$set_inverse(inverse_x)
                return(inverse_x)
        }
}



# tested with: 
# matrix1 <- matrix(data = c(9,3,2,8), nrow = 2, ncol = 2)
# matrix2 <- makeCacheMatrix(matrix1)
# cacheSolve(matrix2)

# returns             
#         [,1]        [,2]
# [1,]  0.12121212 -0.03030303
# [2,] -0.04545455  0.13636364
   
