//Ejercicio 2:
//	Pide un número e indica si es positivo o negativo.

Algoritmo dia11_ejercicio02_numero_es_positivo_o_negativo
	
	Definir numero Como Real
	
	Escribir Sin Saltar 'Ingresa un número: '
	Leer numero
	
	Escribir ''
	Si numero < 0 Entonces
		Escribir 'El número ',numero,' es negativo'
	SiNo
		Si numero > 0 Entonces
			Escribir 'El número ',numero,' es positivo'
		SiNo
			Escribir 'El número ',numero,' ni es negativo ni positivo'
		FinSi
		
	FinSi
	
FinAlgoritmo
