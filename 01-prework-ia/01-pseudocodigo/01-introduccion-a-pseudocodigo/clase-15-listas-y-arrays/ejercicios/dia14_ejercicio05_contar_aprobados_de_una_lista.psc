//Ejercicio 5
//Enunciado
//Leer 5 notas y contar aprobados.

Algoritmo dia14_ejercicio05_contar_aprobados_de_una_lista
	Definir notas Como Real
	Definir i, contador Como Entero
	Dimension notas[5]	
	i = 0
	contador = 0
	
	Mientras i<5 Hacer
		Escribir Sin Saltar 'Ingrese la nota: '
		Leer notas[i]	
		Si notas[i]	>=5 Entonces
			contador = contador + 1
		FinSi
		i = i+1
	FinMientras
	
	Escribir  ''
	Escribir 'En total hay ', contador, ' aprobados'
FinAlgoritmo
