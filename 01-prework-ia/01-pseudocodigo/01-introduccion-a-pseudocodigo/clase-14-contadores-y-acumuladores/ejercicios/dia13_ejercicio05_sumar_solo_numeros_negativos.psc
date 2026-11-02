//Ejercicio 5
//Enunciado
//Leer 5 números y mostrar la suma solo de los negativos.

Algoritmo dia13_ejercicio05_sumar_solo_numeros_negativos
	Definir numero,suma Como Real
	Definir i Como Entero	
	i = 0
	suma = 0
	
	Mientras i < 5 Hacer
		Escribir Sin Saltar 'Ingresa un número: '
		Leer numero		
		Si numero < 0 Entonces
			suma = suma + numero
		FinSi		
		i = i + 1
	FinMientras
	
	Escribir ''
	Escribir 'La suma de los números negativos es: ' suma
FinAlgoritmo
