//Ejercicio 7:
//Pide la nota de un alumno e indica:
//	- 'Sobresaliente' si es >= 9
//	- 'Notable' si es >= 7
//	- 'Aprobado' si es >= 5
//	- 'Suspenso' en caso contrario

Algoritmo dia11_ejercicio07_clasificacion_nota
	Definir nota Como Real
	
	Escribir Sin Saltar 'Por favor ingresar una nota: '
	Leer nota
	
	Escribir ''
	Si nota >= 9 Entonces
		Escribir 'La nota ', nota, ' es Sobresaliente'
	SiNo
		Si nota >= 7 Entonces
			Escribir 'La nota ', nota, ' es Notable'
		SiNo
			Si nota >= 5 Entonces
				Escribir 'La nota ', nota, ' es Aprobado'
			SiNo
				Escribir 'La nota ', nota, ' es Suspenso'
			FinSi
		FinSi
	FinSi 

FinAlgoritmo
