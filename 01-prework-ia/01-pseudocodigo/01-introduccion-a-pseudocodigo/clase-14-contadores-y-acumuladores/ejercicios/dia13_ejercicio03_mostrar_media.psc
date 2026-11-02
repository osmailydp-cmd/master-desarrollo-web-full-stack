//Ejercicio 3
//Enunciado
//Escribe un programa que:	
//	Leer 5 números y mostrar la media

Algoritmo dia13_ejercicio03_mostrar_media
	Definir numero,suma, media Como Real
	Definir i Como Entero	
	i = 0
	suma = 0
	media = 0
	
	Mientras i < 5 Hacer
		Escribir Sin Saltar 'Ingrese el número: '
		Leer numero
		suma = suma + numero
		i = i + 1
	FinMientras
	
	media = suma / 5
	
	Escribir ''
	Escribir 'La media es: ' media
	
FinAlgoritmo
