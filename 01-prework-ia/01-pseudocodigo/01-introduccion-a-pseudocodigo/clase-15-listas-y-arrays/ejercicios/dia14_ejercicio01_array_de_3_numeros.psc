//Ejercicio 1
//Enunciado
//Crear un array de 3 números y mostrarlos.

Algoritmo dia14_ejercicio01_array_de_3_numeros
	Definir numeros Como Real
	Definir i Como Entero
	Dimension numeros[3]
	i=0
	
	Mientras i<3 Hacer
		Escribir Sin Saltar 'Ingrese un número: '
		Leer numeros[i]
		i=i+1
	FinMientras
		
	Escribir ''
	Escribir 'Array de 3 números'
	Escribir Sin Saltar '[ '
	i=0
	Mientras i<3 Hacer
		Escribir Sin Saltar numeros[i], ' '
		i=i+1
	FinMientras
	Escribir ']'
FinAlgoritmo
