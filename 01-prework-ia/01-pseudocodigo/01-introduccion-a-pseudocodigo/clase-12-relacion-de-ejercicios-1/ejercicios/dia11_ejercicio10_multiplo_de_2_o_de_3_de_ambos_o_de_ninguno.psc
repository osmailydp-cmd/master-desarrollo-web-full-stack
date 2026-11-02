//Ejercicio 10:Múltiplo de 2 o 3. De ambos o de ninguno
//Pide un número e indica:
//	- 'Múltiplo de 2' si es divisible entre 2
//	- 'Múltiplo de 3' si es divisible entre 3
//	- 'No es múltiplo de 2 ni de 3' en caso contrario

Algoritmo dia11_ejercicio10_multiplo_de_2_o_de_3_de_ambos_o_de_ninguno
	
	Definir numero Como Entero
	Definir esdivisibleEntre2, esdivisibleEntre3 Como Logico
	

	Escribir Sin Saltar 'Ingresa el número: '
	Leer numero
	
	esdivisibleEntre2 = numero MOD 2 = 0
	esdivisibleEntre3 = numero MOD 3= 0
	
	Escribir ''
	Si esdivisibleEntre2 Y esdivisibleEntre3 Entonces
		Escribir 'El número ', numero, ' es múltiplo de 2 y de 3'
	SiNo
		Si esdivisibleEntre2 Entonces
			Escribir 'El número ', numero, ' es múltiplo de 2'
		SiNo
			Si esdivisibleEntre3 Entonces
				Escribir 'El número ', numero, ' es múltiplo de 3'
			SiNo
				Escribir 'El número ', numero, ' no es múltiplo de 2 ni de 3'
			FinSi
		FinSi
FinSi
	
FinAlgoritmo
