//Ejercicio 3. Número más alto de un array
//Crea un algoritmo que:
//		a. Cree un array de dimensión 10 con números aleatorios (1-50).
//		b. Llame a una función que recorra el array y devuelva el número más alto.
//	Parámetros: array con 10 números aleatorios (1-50).
//	Retorno: el valor más alto (entero).
//		c. Imprima el array y el valor devuelto por la función.
//	Resultado de ejemplo:
//		17 11 5 20 34 2 45 36 8 12
//		El número más alto es el 45

Algoritmo dia20_ejercicio03_numero_maximo_de_un_array
	Definir i,numeros Como Entero
	Dimension numeros[10]
	LlenarArrayConNumerosAleatorios(numeros)
	
	i=0
	Escribir '[ ' Sin Saltar
	Mientras i<10 Hacer		
		Escribir numeros[i], ' ' Sin Saltar
		i = i+1	
	FinMientras
	Escribir ']'
	Escribir ' '
	Escribir  'El número más alto es el ' ,NumeroMasAltoDeUnArray(numeros)
FinAlgoritmo

SubProceso LlenarArrayConNumerosAleatorios(numeros) 
	Definir i Como Entero	
	i=0	
	Mientras i<10 Hacer		
		numeros[i] =Aleatorio(1,50)
		i = i+1	
	FinMientras	
FinSubProceso


Funcion resultado = NumeroMasAltoDeUnArray(numeros)
	Definir i, resultado Como Entero
	resultado = numeros[0]
	i=1
	Mientras i<10 Hacer
		Si resultado < numeros[i] Entonces
			resultado = numeros[i]
		FinSi
		i = i+1
	FinMientras
FinFuncion
	