//Ejercicio 2 Número entre 10 y 20
//
//Enunciado
//Pida un número
//Muestre si el número está entre 10 y 20 (incluidos)
	
Algoritmo dia08_ejercicio02_numero_entre_10_y_20
	
	Definir num Como Entero
	Definir resultado Como Logico
	
	Escribir Sin Saltar 'Ingresa un número: '
	Leer num	
	resultado = 10 <= num Y num <= 20
	
	Escribir ''
	Si resultado = Verdadero Entonces
		Escribir 'El número se encuentra entre 10 y 20 incluidos, el resultado es: ', resultado
	SiNo
		Escribir 'El número NO se encuentra entre 10 y 20 incluidos, el resultado es: ', resultado
	FinSi	
	
FinAlgoritmo

