//Ejercicio 1
//Enunciado
//Escribe un programa que:	
//	Leer 5 números y mostrar su suma total.

Algoritmo dia13_ejercicio01_suma_total	
	Definir numero,suma Como Real
	Definir i Como Entero	
	suma = 0
	i = 0
	
	Mientras i < 5 Hacer
		Escribir Sin Saltar 'Ingrese el número: '
		Leer numero		
		suma = suma + numero
		i = i + 1
	FinMientras
	
	Escribir ''
	Escribir 'La suma total es: ', suma
	
FinAlgoritmo
