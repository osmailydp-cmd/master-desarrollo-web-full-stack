//Ejercicio 2
//Enunciado
//Escribe un programa que:	
//	Leer 5 números y contar cuántos son positivos.

Algoritmo dia13_ejercicio02_contar_numeros_positivos	
	Definir numero Como Real
	Definir i, contadorPositivos Como Entero	
	i = 0
	contadorPositivos = 0
	
	Mientras i < 5 Hacer
		Escribir Sin Saltar 'Ingrese el número: '
		Leer numero
		Si numero > 0 Entonces			
			contadorPositivos = contadorPositivos + 1
		FinSi
		i = i + 1
	FinMientras
	
	Escribir ''
	Escribir 'En total hay ', contadorPositivos ' positivos'
	
FinAlgoritmo
