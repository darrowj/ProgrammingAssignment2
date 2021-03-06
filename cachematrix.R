## Jason Darrow Coursera Assignment Week 3
## Put comments here that give an overall description of what your
## functions do

##This is a function that takes a Matrix() as an argument
##The function will return a list
##The List will contain get, set, getInverse, setInverse functions

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set <- function(y) {
        x <<- y
        inver <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inver <<- inverse
    getInverse <- function() inver
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


##The function takes a list resulting from the makeCacheMatrix() function
##The function will return the inverse of 'x'	
##It will solve() the matrix if the value is not cached
##It will return the cache value if it is present		

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    matr <- x$getInverse()
    if(!is.null(matr)) {
        message("getting cached data")
        return(matr)
    }
    data <- x$get()
    matr <- solve(data, ...)
    x$setInverse(matr)
    matr
    
}
