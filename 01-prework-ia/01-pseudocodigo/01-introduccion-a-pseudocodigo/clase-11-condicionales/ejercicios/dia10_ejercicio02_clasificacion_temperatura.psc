//Ejercicio 2 Clasificacion de temperatura
//
//Enunciado
//Escribe un programa que:
//	Pida la temperatura actual
//Muestre un mensaje según el valor introducido:
//	Si la temperatura es menor que 10 grados -> mostrar "Hace frío"
//	Si la temperatura está entre 10 y 24 grados -> mostrar "Temperatura agradable"
//	Si la temperatura es igual o mayor que 25 grados -> mostrar "Hace calor"

Algoritmo dia10_ejercicio02_clasificacion_temperatura
	
	Definir temperatura Como Real
	Definir frio, agradable, calor Como Logico
	
	Escribir Sin Saltar 'Introduce la temperatura: '
	Leer temperatura
	
	frio = temperatura < 10
	agradable = temperatura >= 10 y temperatura < 25
	calor = temperatura >= 25
	
	Si frio Entonces
		Escribir 'Hace frío'
	SiNo
		Si agradable Entonces
			Escribir 'Temperatura agradable'
		SiNo
			si calor Entonces
				Escribir 'Hace calor'
			FinSi
		FinSi
	FinSi	
	
FinAlgoritmo
