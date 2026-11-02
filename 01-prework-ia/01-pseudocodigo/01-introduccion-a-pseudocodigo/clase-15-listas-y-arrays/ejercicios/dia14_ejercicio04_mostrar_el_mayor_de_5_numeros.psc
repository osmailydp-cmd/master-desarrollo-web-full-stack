//Ejercicio 4
//Enunciado
//Leer 5 números y mostrar el mayor.

Algoritmo dia14_ejercicio04_mostrar_el_mayor_de_5_numeros	
	Definir numeros, numeroMayor Como Real
	Definir i Como Entero
	Dimension numeros[5]	 
	i = 0
	
	Mientras i<5 Hacer
		Escribir Sin Saltar 'Ingrese un número: '
		Leer numeros[i]		
		i = i+1
	FinMientras
	
	numeroMayor = numeros[0]
	i = 1	
	Mientras i<5 Hacer
		Si numeroMayor < numeros[i] Entonces
			numeroMayor = numeros[i]
		FinSi
		i = i+1
	FinMientras
	
	Escribir ''
	Escribir 'El numero mayor es: ', numeroMayor
	
FinAlgoritmo
