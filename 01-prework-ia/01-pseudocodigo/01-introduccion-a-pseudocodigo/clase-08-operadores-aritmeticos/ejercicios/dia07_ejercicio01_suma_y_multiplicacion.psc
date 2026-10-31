//Ejercicio 1
//
//Enunciado
//Escribe un programa que:
//	Pida dos números al usuario
//	Calque su suma
//	Calcule su multiplicación
//	Muestre ambos resultados

Algoritmo dia07_ejercicio01_suma_y_multiplicacion
	
	Definir numero1, numero2, suma, multiplicacion Como Real
		
	Escribir Sin Saltar 'Por favor ingresar el primer número: '
	Leer numero1
	Escribir Sin Saltar 'Por favor ingresar el segundo número: '
	Leer numero2
	
	suma = numero1 + numero2
	multiplicacion = numero1 * numero2
	Escribir ''
	Escribir 'El resultado de la suma es: ', suma
	Escribir 'El resultado de la multiplicación es: ', multiplicacion
	
FinAlgoritmo
