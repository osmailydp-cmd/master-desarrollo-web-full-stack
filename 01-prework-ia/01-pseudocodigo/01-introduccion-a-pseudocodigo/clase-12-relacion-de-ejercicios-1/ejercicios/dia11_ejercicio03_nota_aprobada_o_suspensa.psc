//Ejercicio 3:
//	Pide una nota e indica si está aprobada (nota >= 5) o suspensa.

Algoritmo dia11_ejercicio03_nota_aprobada_o_suspensa
	Definir nota Como Real
	
	Escribir Sin Saltar 'Por favor ingresar una nota: '
	Leer nota
	
	Escribir ''
	Si nota >= 5 Entonces
		Escribir 'La nota ', nota, ' está aprobada'
	sino 
		Escribir 'La nota ', nota, ' está suspensa'
	FinSi
FinAlgoritmo
