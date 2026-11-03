//Reto: Indicar en qué posición está un valor buscado

Algoritmo dia16_ejercicio_reto_posicion_de_valor_buscado
	
	Definir listaNumeros, buscado Como Real
	Definir i Como Entero
	Definir encontrado Como Logico
	Dimension listaNumeros[5]
	
	i=0	
	Mientras i<5  Hacer
		Escribir Sin Saltar'Ingrese un número: '
		Leer listaNumeros[i]
		i=i+1
	FinMientras
	
	Escribir ''
	Escribir Sin Saltar'Ingrese el número buscado: '
	Leer buscado
	
	Escribir ''
	i=0	
	encontrado = Falso
	Mientras i<5 y encontrado=Falso Hacer
		si listaNumeros[i] = buscado Entonces
			encontrado = Verdadero
			Escribir ' El valor buscado (', buscado, ') se encuentra en la posición ', i
		FinSi
		i=i+1
	FinMientras
	
	Si encontrado= falso Entonces
		Escribir 'El numero buscado no existe'
	FinSi
	
FinAlgoritmo
