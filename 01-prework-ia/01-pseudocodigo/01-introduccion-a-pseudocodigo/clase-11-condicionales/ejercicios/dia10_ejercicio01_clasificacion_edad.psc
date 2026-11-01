//Ejercicio 1 Clasificacion de edad
//
//Enunciado
//Escribe un programa que:
//	Pida la edad de una persona
//Muestre un mensaje según su edad:
//	Si tiene menos de 18 años -> mostrar "Menor de edad"
//	Si tiene entre 18 y 64 años -> mostrar "Adulto"
//	Si tiene 65 años o más -> mostrar "Persona jubilada o en edad de jubilación"
				
Algoritmo dia10_ejercicio01_clasificacion_edad
	
	Definir edad Como Entero
	Definir menorEdad, adulto, jubilacion Como Logico
	
	Escribir Sin Saltar 'Introduce tu edad: '
	Leer edad
	
	menorEdad = edad < 18
	adulto = edad >= 18 y edad <= 64
	jubilacion = edad >= 65
	
	Si menorEdad Entonces
		Escribir 'Persona menor de edad'
	SiNo
		Si adulto Entonces
			Escribir 'Persona adulta'
		SiNo
			si jubilacion Entonces
				Escribir 'Persona jubilada o en edad de jubilación'
			FinSi
		FinSi
	FinSi	
	
FinAlgoritmo
