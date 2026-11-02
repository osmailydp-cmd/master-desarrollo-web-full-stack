//Ejercicio 4:
//	Pide dos números y muestra cuál es mayor. Si son iguales, indícalo.

Algoritmo dia11_ejercicio04_numero_mayor_o_igual
	
	Definir numero1, numero2 Como Real
		
	Escribir Sin Saltar 'Ingresa el primer número: '
	Leer numero1
	Escribir Sin Saltar 'Ingresa el segundo número: '
	Leer numero2
	
	Escribir ''
	Si numero1 = numero2  Entonces
		Escribir 'El número ' numero1 ' es igual al número ' numero2
	SiNo
		Si numero1 < numero2 Entonces
			Escribir 'El número ' numero1 ' es menor que el número ' numero2
		SiNo
			Escribir 'El número ' numero1 ' es mayor que el número ' numero2
		FinSi
	FinSi
	
FinAlgoritmo
