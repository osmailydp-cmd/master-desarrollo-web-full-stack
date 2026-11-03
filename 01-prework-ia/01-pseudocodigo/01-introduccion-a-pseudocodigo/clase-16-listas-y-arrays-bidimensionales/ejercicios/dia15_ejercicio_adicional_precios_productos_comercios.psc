//Ejercicio adicional de precios de productos por comercios
//Enunciado
//Intentar hacer una matriz de 3x3 y rellenarla

Algoritmo dia15_ejercicio_adicional_precios_productos_comercios 	
	Definir productos, comercios Como Caracter
	Definir fila,columna Como Entero
	Definir precios Como Real
	Dimension productos[3]
	Dimension comercios[3]
	Dimension precios[3,3]
	
	fila=0
	Mientras fila<3 Hacer
		Escribir Sin Saltar 'Ingrese el nombre del producto: '
		Leer productos[fila]
		fila=fila+1
	FinMientras
	
	Escribir ' '
	
	columna=0
	Mientras columna<3 Hacer
		Escribir Sin Saltar'Ingrese el nombre del comercio: '
		Leer comercios[columna]
		columna=columna+1
	FinMientras
	
	Escribir ' '
	
	fila=0
	Mientras fila<3 Hacer
		columna=0
		Mientras columna<3 Hacer
			Escribir Sin Saltar'Ingrese el precio del del producto ', productos[fila], ' en el comercio ', comercios[columna], ' '
			Leer precios[fila,columna]
			columna=columna+1
		FinMientras
		Escribir ' '
		fila=fila+1
	FinMientras
	
		
	Escribir ''
	Escribir 'Matriz de precios de productos por comercios'	
	fila = 0	
	Mientras fila < 3 Hacer		
		Escribir ''
		Escribir 'Producto: ', productos[fila]		
		columna = 0		
		Mientras columna < 3 Hacer			
			Escribir '  Comercio: ', comercios[columna], ' - Precio: ', precios[fila,columna]			
			columna = columna + 1			
		FinMientras		
		fila = fila + 1		
	FinMientras

	
FinAlgoritmo
