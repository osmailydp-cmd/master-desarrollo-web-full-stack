//Ejercicio 6
//Enunciado
//Intentar hacer una matriz de 3x3 y rellenarla

Algoritmo dia15_ejercicio06_matriz_de_3x3 
	Definir matriz Como Real
	Definir fila, columna Como Entero
	Dimension matriz[3,3]
	
	fila=0
	Mientras fila<3 Hacer
		columna=0
		Mientras columna<3 Hacer
			Escribir Sin Saltar' Ingrese un valor de su matriz para la fila ' fila ' y la columna ' columna
			Leer matriz[fila,columna]
			columna=columna+1
		FinMientras
		Escribir ' '
		fila=fila+1
	FinMientras
	
	
	Escribir ' Matriz de 3x3'
	fila=0
	Mientras fila<3 Hacer
		columna=0
		Mientras columna<3 Hacer
			Escribir Sin Saltar ' ', matriz[fila,columna] 
			columna=columna+1
		FinMientras
		Escribir ' '
		fila=fila+1
	FinMientras
FinAlgoritmo
