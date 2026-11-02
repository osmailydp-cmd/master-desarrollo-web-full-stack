//Ejercicio 2
//Enunciado
//Leer 5 edades y mostrarlas.

Algoritmo dia14_ejercicio02_array_de_5_edades
	Definir edades, i Como Entero	
	Dimension edades[5]
	i=0
	
	Mientras i<5 Hacer
		Escribir Sin Saltar 'Ingrese la edad: '
		Leer edades[i]
		i=i+1
	FinMientras	
	
	Escribir ''
	Escribir 'Array de 5 edades'
	Escribir Sin Saltar '[ '
	i=0
	Mientras i<5 Hacer
		Escribir Sin Saltar edades[i], ' ' 
		i=i+1
	FinMientras
	Escribir ']'
	
FinAlgoritmo
