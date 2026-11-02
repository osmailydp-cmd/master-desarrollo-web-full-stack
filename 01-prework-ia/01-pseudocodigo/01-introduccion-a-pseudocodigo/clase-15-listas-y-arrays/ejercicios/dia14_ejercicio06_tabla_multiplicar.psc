//Ejercicio 6
//Enunciado
//Pedir un número y escribir la tabla de multiplicar del 1 al 10 de ese número

Algoritmo dia14_ejercicio06_tabla_multiplicar
	Definir numero, i,resultado Como Entero
	
	Escribir Sin Saltar 'Ingrese un número: '
	Leer numero	
	
	Escribir ''
	Escribir 'La tabala de multiplicar del ' numero ' es:'
	i=1
	Mientras i<=10 Hacer
		resultado = i * numero		
		Escribir  numero ' * ' i ' = ' resultado
		i = i+1
	FinMientras	
	
FinAlgoritmo
