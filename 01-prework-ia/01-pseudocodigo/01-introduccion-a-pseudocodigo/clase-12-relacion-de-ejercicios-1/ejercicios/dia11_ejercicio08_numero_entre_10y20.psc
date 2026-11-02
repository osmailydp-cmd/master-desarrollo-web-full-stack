//Ejercicio 8:
//	Pide un número e indica si está entre 10 y 20 (incluidos) o fuera de ese rango.

Algoritmo dia11_ejercicio08_numero_entre_10y20
	Definir numero Como Real
	
	Escribir Sin Saltar 'Por favor ingrese un número entre 10 y 20 (incluidos): '
	Leer numero
	
	Escribir ''
	Si numero >= 10 y numero <= 20 Entonces
		Escribir 'El número ',numero, ' está entre 10 y 20'
	SiNo
		Escribir 'El número ',numero, ' está fuera de rango'
	FinSi
FinAlgoritmo
