//Ejercicio 9  Listas bidimensionales (introducción)
//Dada una tabla de 2 filas y 3 columnas con las ventas de dos vendedores en tres meses, 
//calcula y muestra el total de ventas de cada vendedor (suma por filas).

Algoritmo dia17_ejercicio09_total_ventas_por_vendedor
	Definir vendedoresMeses, posicion Como Entero
	Definir suma, i, fila, columna Como Entero
	Definir nombresDisponibles, mesesDisponibles,  listaNombres, listaMeses Como Caracter
	Definir repetido Como Logico
	
	Dimension vendedoresMeses[2,3]	
	Dimension nombresDisponibles[10]
	Dimension mesesDisponibles[12]
	Dimension listaNombres[2]
	Dimension listaMeses[3]
	
	nombresDisponibles[0] <- "Ana"
	nombresDisponibles[1] <- "Sofia"
	nombresDisponibles[2] <- "Amalia"
	nombresDisponibles[3] <- "Analia"
	nombresDisponibles[4] <- "Daniel"
	nombresDisponibles[5] <- "Carlos"
	nombresDisponibles[6] <- "Maria"
	nombresDisponibles[7] <- "Pedro"
	nombresDisponibles[8] <- "Lucia"
	nombresDisponibles[9] <- "Andres"
	
	mesesDisponibles[0] <- "Enero"
	mesesDisponibles[1] <- "Febrero"
	mesesDisponibles[2] <- "Marzo"
	mesesDisponibles[3] <- "Abril"
	mesesDisponibles[4] <- "Mayo"
	mesesDisponibles[5] <- "Junio"
	mesesDisponibles[6] <- "Julio"
	mesesDisponibles[7] <- "Agosto"
	mesesDisponibles[8] <- "Septiembre"
	mesesDisponibles[9] <- "Octubre"
	mesesDisponibles[10] <- "Noviembre"
	mesesDisponibles[11] <- "Diciembre"	
		
	fila = 0
	Mientras fila < 2 Hacer
		Repetir
			posicion = Aleatorio(0,9)
			repetido = Falso
			
			Para i = 0 Hasta fila - 1 Hacer
				Si listaNombres[i] = nombresDisponibles[posicion] Entonces
					repetido = Verdadero
				FinSi
			FinPara
			
		Hasta Que repetido = Falso
		
		listaNombres[fila] = nombresDisponibles[posicion]
		fila = fila + 1
	FinMientras
	
	Escribir 'Lista de nombres'
	Escribir Sin Saltar'['
	fila = 0
	Mientras fila < 2 Hacer		
		Escribir Sin Saltar ' ',  listaNombres[fila]  
		fila = fila + 1
	FinMientras
	Escribir ' ]'
	
	Escribir ''
	
	columna = 0
	Mientras columna < 3 Hacer
		Repetir
			posicion = Aleatorio(0,11)
			repetido = Falso
			
			Para i = 0 Hasta columna - 1 Hacer
				Si listaMeses[i] = mesesDisponibles[posicion] Entonces
					repetido = Verdadero
				FinSi
			FinPara
			
		Hasta Que repetido = Falso
		
		listaMeses[columna] = mesesDisponibles[posicion]
		columna = columna + 1
	FinMientras
	
	Escribir 'Lista de meses'
	Escribir Sin Saltar'['
	columna = 0
	Mientras columna < 3 Hacer		
		Escribir Sin Saltar ' ',  listaMeses[columna]  
		columna = columna + 1
	FinMientras
	Escribir ' ]'
	
	Escribir ''
	
	Para fila = 0 Hasta 1 Hacer
		Para columna =0 Hasta 2 Hacer
			vendedoresMeses[fila,columna] = Aleatorio(0,100)
		FinPara
	FinPara
	
	Para fila = 0 Hasta 1 Hacer
		Escribir 'Vendedor: ', listaNombres[fila]
		Para columna =0 Hasta 2 Hacer
			Escribir 'Mes: ', listaMeses[columna]
			Escribir  ' ', vendedoresMeses[fila,columna]
		FinPara
		Escribir ' '
	FinPara	
	
	Para fila = 0 Hasta 1 Hacer
		suma = 0
		Para columna =0 Hasta 2 Hacer
			suma = suma + vendedoresMeses[fila,columna] 			
		FinPara
		Escribir ' El total de ventas del vendedor ' , listaNombres[fila], ' es: ', suma
	FinPara	

FinAlgoritmo
