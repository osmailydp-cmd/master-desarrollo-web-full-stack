//Ejercicio 1. Múltiplos de 2 y de 3
//Crea un algoritmo que:
//	a. Pida un número entero por pantalla.
//	b. Llame a un procedimiento que imprima si ese número es múltiplo de 2, múltiplo
//		de 3, o múltiplo de 2 y de 3.
//	Parámetros: el número introducido por el usuario (entero).
//	Retorno: ninguno

Algoritmo dia20_ejercicio01_multiplos_de_2_y_3
	Definir numero Como Entero
	Escribir 'Ingrese un numero: ' Sin Saltar
	Leer numero
	MultiploDe2Y3(numero)
FinAlgoritmo

SubProceso MultiploDe2Y3(numero)
	Si numero mod 2=0 Y numero mod 3 =0 Entonces
		Escribir 'El ', numero, ' es múltiplo de 2 y de 3'
	SiNo
		Si numero mod 2=0 Entonces
			Escribir 'El ', numero, ' es múltiplo de 2 '
		Sino Si numero mod 3 =0 Entonces
				Escribir 'El ', numero, ' es múltiplo de 3 '	
			Sino 
				Escribir 'El ', numero, ' no es múltiplo ni de 2 ni de 3 '
			FinSi
		FinSi
	FinSi
FinSubProceso
