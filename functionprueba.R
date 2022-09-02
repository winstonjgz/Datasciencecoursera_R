add2 <- function(x,y){
       x+y
}

above10 <- function(x){ ## numeros por encima de x
       use <- x>10
       x[use]
       
}
above <- function(x,n){ ## numeros por encima de n
       use <- x > n
       x[use]
}

above <- function(x,n=20){ ## numeros por encima de n parametrizado a 20
       use <- x > n
       x[use]
}

