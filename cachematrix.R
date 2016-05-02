## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
