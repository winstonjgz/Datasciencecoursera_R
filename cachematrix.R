## This function is all about the calc of matrix inverse

## This function made a matrix for "x" parameters
makeCacheMatrix <- function(x = numeric()) {
       m <- NULL
       set <- function(y) {
              x <<- y
              m <<- NULL
       }
       get <- function() x
       setmatrix <- function(det) m <<- det # Here we calculate the determinant of a matrix
       getmatrix <- function() m
       list(set = set, get = get,
            setmatrix = setmatrix,
            getmatrix = getmatrix)
}




## This function made to return the inverse of matrix of "x"

cacheSolve <- function(x, ...) {
       ## Return a matrix that is the inverse of 'x'
       m <- x$getmatrix()
       if(!is.null(m)) {
              message("getting cached data")
              return(m)
       }
       data <- x$get()
       m <- det(data, ...)
       x$setmatrix(m)
       m
}
