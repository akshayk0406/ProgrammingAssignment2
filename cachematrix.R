## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates cacheMatrix and provides functions to get/set the Inverse of the Matrix
makeCacheMatrix <- function(x = matrix()) {

	InverseMatrix <- NULL
	
	set <- function(y)
	{
		x <<- y
		InverseMatrix <<- NULL
	}

	get <- function()
	{
		x
	}

	setInverse <- function(inverse)
	{
		InverseMatrix <<- inverse
	}

	getInverse <- function()
	{
		InverseMatrix
	}

	list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
## This function computes the Inverse of matrix if not already computed else returns the computed matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	
	InverseMatrix <- x$getInverse()

	if(!is.null(InverseMatrix))
	{
		message("getting cached data")
		return(InverseMatrix)
	}
	data <- x$get()
	inverse <- solve(data,...)
	x$setInverse(inverse)
	inverse
}
