//Ejercicio 3
//Enunciado
//Leer 5 números y sumar todos.

Algoritmo dia14_ejercicio03_sumar_5_numeros_de_una_lista
	Definir numeros,suma Como Real	
	Definir i Como Entero
	Dimension numeros[5]	
	suma = 0
	i = 0
	
	Mientras i<5 Hacer
		Escribir Sin Saltar 'Ingrese un número: '
		Leer numeros[i]
		i=i+1
	FinMientras
	
	i = 0	
	Mientras i<5 Hacer
		suma = suma + numeros[i]
		i=i+1
	FinMientras
	
	Escribir ''
	Escribir 'La suma total es: ' suma
	
FinAlgoritmo
