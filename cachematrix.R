##Programming Assignment 2: Lexical Scoping
##Diego Jaramillo Celis
##Assignment: Caching the Inverse of a Matrix

##**********************************************************************##
## PARA VER COMO PROBAR EL EJERCICIO, POR FAVOR IR AL FINAL DEl ARCHIVO ##
## TO SEE HOW TO TEST THIS EXERCISE, PLEASE GO TO END OF FILE           ##
##**********************************************************************##

## NOTA: Ejercicio basado en el ejemplo "Caching the Mean of a Vector" -RPENG/R-PROGRAMMING/COURSERA
## NOTE: Exercise based on example "Caching the Mean of a Vector" -RPENG/R-PROGRAMMING/COURSERA

## makeCacheMatrix: Esta función crea un "matriz" que puede capturar su inversa
## makeCacheMatrix: This function creates "matrix" that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

  # defino la variable "invx" para almacenar el valor de la matriz inversa 
  # define "invx" variable to store the inverse matrix value
  invx <- matrix()
  
  #Seteo de "x" en el entorno padre y limpieza de la variable invx
  #Set of "x" in parent environment and clean invx variable
   set <- function(usrmat=matrix()) { 
      x <<- usrmat
      invx <<- NULL      
   }
  
  #Obtener el valor the la matriz
  #Get the value of the matrix
  get <- function() x  
  
  #Seteo del valor de la matriz inversa
  #Set the inverse matrix value
  setinvrs <- function(solve) invx <<- solve
  
  #Obtener el valor de la matriz inversa
  #Get the inverse matrix value
  obtenerinv <- function() invx 
  
  #Lista de las funciones disponibles
  #List of available functions
  list(set = set, get = get,setinvrs=setinvrs,obtenerinv=obtenerinv)      
}

## cachesolve: Retorna una matriz que es la inversa de la matriz "x"
## cachesolve: Return a matrix that is the inverse of "x"

cacheSolve <- function(x, ...) {
  
  # Verificar si ya existe una matriz inversa
  # Verify if there is an inverse matrix already
  invx <- x$obtenerinv() 

  if(!is.null(invx)) {  
    message("getting cached inverse")
    return(invx)
  } 
  
  #Obtener la matriz definida en la función makeCacheMatrix
  #Get matrix defined in makeCacheMatrix function
  mat <- x$get()
  
  #Generar la matriz inversa
  #Generate the inverse matrix
  invx <- solve(mat, ...)
  x$setinvrs(invx)
  
  #muestra la matriz inversa
  #show inverse matrix
  invx
}


## PRUEBA DE CACHEMATRIX
## TEST OF CACHEMATRIX

#Ejecute estos pasos para probar las funciones
#Execute this steps to test the functions

#Definir valor para X, por ejemplo:
#Define value to X, i.e:
# x <- matrix(c(2,3,2,1,2,1,1,1,2), nrow=3, ncol=3)
# x <- matrix(c(2,3,2,1), nrow=2, ncol=2)

#Verificar que "x" sea una matriz
#Verify that "x" is matrix

#class(x)

#Asignar el resultado de la función "makeCacheMatrix(x)" a la variable "result"
#Assign the result of "makeCacheMatrix(x)" function to the variable "result"

#result <- makeCacheMatrix(x) 

#Obtener el valor de la matriz
#Get the matrix value

#result$get()
#matriz<-result$get()

#Generar la matriz inversa
#Generate the inverse matrix

#result$setinvrs(solve(x)) 

#Obtener la matriz inversa
#Get the inverse matrix

#result$obtenerinv() 
#inversa<-result$obtenerinv() 

#El resultado es correcto cuando la multiplicación de la matrices... 
#... es igual a la matriz indentidad (matriz*inversa=identidad)
#The result is correct when the product of both matrix is equal to identity matrix (matrix*inverse=identity)

##PUT THIS IN CONSOLE:
#matriz
#inversa
#round((matriz %*% inversa), digits = 1)


