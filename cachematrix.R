## makeCacheMatrix function contains four functions two of which are helpful in getting and setting the values of original matrix 
## and other two are useful in getting and caching the inverse of the given matrix


makeCacheMatrix <- function(x = matrix()) {

	inv <-NULL
	setMatrx<-function(mat){
		m<<-mat 
	}
	getMatrix<-function() m
	
	cacheInverse<-function(temp){
		inv<<-temp
	}
	getInverse<-function(){
		if (nrow(m) != ncol(m)) {print('matrix is not square')}
		inv
	}
	
	list(setMatrix=setMatrix,getMatrix=getMatrix,cacheInverse=cacheInverse,getInverse=getInverse)

}


## cacheSolve function decides whether it has to calculate the inverse or use the cached value.

cacheSolve <- function(x) {
      ## Return a matrix that is the inverse of 'x'
	n<-s$getInverse()
	if (!is.null(n)){
		message("getting cached data")
		return(n)
	}
	n<-solve(s$getMatrix())
	s$cacheInverse(n)
	n
}
