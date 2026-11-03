//Ejercicio 1
//Enunciado
//Crear matriz 2x2 y mostrar valores.

//Ejercicio 2
//Enunciado
//Leer matriz 2x2 y mostrarla.

Algoritmo dia15_ejercicio01_02_crear_y_leer_matriz_2x2
	Definir numeros, fila, columna Como Entero
	Dimension numeros[2,2]
	
	fila = 0
	Mientras fila<2 Hacer
		columna = 0
		Mientras columna<2 Hacer			
			Escribir Sin Saltar 'Ingrese un número en la fila: ', fila, ' columna: ', columna			
			Leer numeros[fila,columna]
			columna = columna +1
		FinMientras
		Escribir ''
		fila = fila + 1		
	FinMientras
	
	Escribir ' Matriz 2x2: ' 
	fila = 0	
	Mientras fila<2 Hacer		
		columna = 0
		Mientras columna<2 Hacer
			Escribir Sin Saltar ' ', numeros[fila,columna]
			columna = columna +1
		FinMientras
		Escribir ' '
		fila = fila + 1		
	FinMientras
		
FinAlgoritmo
