//Ejercicio 1 Mayor de edad
//
//Enunciado
//Escribe un programa que:
//	Pida la edad del usuario
//	Muestre el resultado de la expresión: edad >= 18

Algoritmo dia08_ejercicio01_mayor_edad
	Definir edad Como Entero
	Definir resultado Como Logico
	
	Escribir Sin Saltar'Ingresa tu edad: '
	Leer edad
	resultado = edad >= 18
	
	Escribir ''
	Escribir 'El resultado de la expresión edad >= 18 es: ' resultado
	
FinAlgoritmo
