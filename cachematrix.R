##Programming Assignment 2: Lexical Scoping
##Diego Jaramillo Celis
##Assignment: Caching the Inverse of a Matrix

## makeCacheMatrix: Esta función crea un "matriz" que puede capturar su inversa
## makeCacheMatrix: This function creates "matrix" that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  # defino la variable "invrs" para almacenar el valor de la matriz inversa 
  # define "invrs" variable to store the inverse matrix value
  invx <- matrix()
  
  #Asigna a "x" el valor definido por el usuario en la variable "mat"
  asignamatriz <- function(mat) { 
    x <<- mat
    invx <<- NULL
  }
  
  obtenermat <- function() x
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## PRUEBA DE CACHEMATRIX
##TEST OF CACHEMATRIX

#Definir valor para X
#Define value to X
#  mat <- matrix(c(2,3,2,1,2,1,1,1,2), nrow=3, ncol=3)

#Verificar que "mat" sea una matriz
#Verify that "mat" is matrix
#class(mat)

#Asignar el resultado de la función "makeCacheMatrix(x)" a la variable "result"
#Assign the result of "makeCacheMatrix(x)" function to the variable "result"
#result <- makeCacheMatrix(x) 

