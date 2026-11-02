//Ejercicio 4
//Enunciado
//Leer 5 edades y contar cuántos son mayores de edad.

Algoritmo dia13_ejercicio04_contar_cuantos_son_mayores_de_edad	
	Definir i,edad,contador Como Entero	
	i = 0	
	contador = 0
	
	Mientras i < 5 Hacer
		Escribir Sin Saltar 'Ingresa tu edad: '
		Leer edad		
		Si edad >= 18 Entonces			
			contador = contador + 1
		FinSi		
		i = i + 1
	FinMientras
	
	Escribir ''
	Escribir 'Hay ' contador ' personas mayores de edad'
	
FinAlgoritmo
