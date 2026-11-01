//Ejercicio 3 Tipo de entrada
//
//Enunciado
//Escribe un programa que:
//	Pida la edad del usuario
//Muestre el tipo de entrada que le corresponde:
//	Si tiene menos de 12 años -> mostrar "Entrada infantil"
//	Si tiene 65 años o más -> mostrar "Entrada reducida"
//	En cualquier otro caso -> mostrar "Entrada general"

Algoritmo dia10_ejercicio03_tipo_entrada
	
	Definir edad Como Entero
	Definir entradaInfantil, entradaReducida, entradaGeneral Como Logico
	
	Escribir Sin Saltar 'Introduce tu edad: '
	Leer edad
	
	entradaInfantil = edad < 12
	entradaReducida = edad >= 65
	entradaGeneral =  No (entradaInfantil) Y No (entradaReducida) 
	
	Si entradaInfantil Entonces
		Escribir 'Entrada Infantil'
	SiNo
		Si entradaReducida Entonces
			Escribir 'Entrada Reducida'
		SiNo
			si entradaGeneral Entonces
				Escribir 'Entrada General'
			FinSi
		FinSi
	FinSi	
	
FinAlgoritmo